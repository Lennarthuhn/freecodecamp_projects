#! /bin/bash
PSQL="psql -t -q --username=freecodecamp --dbname=salon -c"

MAIN_MENU(){
  echo -e $1
  echo "$($PSQL "SELECT service_id, name FROM services")" | while read  SERVICE_ID BAR SERVICE_NAME;
    do
    if [[ ! $SERVICE_ID =~ ^[+-]?[0-9]+$ ]];
      then
      continue
    fi
    echo "$SERVICE_ID) $SERVICE_NAME"

  done
  read SERVICE_ID_SELECTED
  if [[ ! $SERVICE_ID_SELECTED =~ ^[+-]?[0-9]+$ ]];
    then
    MAIN_MENU "\nservice must be a number\n"
    return
  fi
  SERVICE_NAME=$($PSQL "SELECT name FROM services WHERE service_id=$SERVICE_ID_SELECTED")
  echo $SERVICE_NAME
  if [[ -z $SERVICE_NAME ]]
    then
    MAIN_MENU "\nI could not find that service. What would you like today?"
    return
  fi

  echo "what is your phone number?"
  read CUSTOMER_PHONE
  CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone ='$CUSTOMER_PHONE'")
  if [[ -z $CUSTOMER_ID ]]
    then
    echo "what's your name?"
    read CUSTOMER_NAME
    CUSTOMER_INSERT_RESULT=$($PSQL "INSERT INTO customers(name, phone) VALUES('$CUSTOMER_NAME', '$CUSTOMER_PHONE')")
    CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone ='$CUSTOMER_PHONE'")
  fi
  echo "At what time?"
  read SERVICE_TIME
  APPOINTMENT_INSERT_RESULT=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')")
  CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone='$CUSTOMER_PHONE'")
  echo "I have put you down for a $SERVICE_NAME at $SERVICE_TIME,$CUSTOMER_NAME."
}

MAIN_MENU "\n~~~~~ MY SALON ~~~~~\n\nWelcome to My Salon, how can I help you?\n"
