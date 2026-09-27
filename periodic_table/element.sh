#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"
MAIN_MENU(){
if [[ -z $1 ]];
then
echo "Please provide an element as an argument."
exit
fi

if [[ $1 =~ ^[0-9]+$ ]];
then 
ATOMIC_NUMBER=$1
IFS='|' read NAME SYMBOL <<< "$($PSQL "SELECT  name, symbol FROM elements WHERE atomic_number = $1")" 
 
else

if [[ ${#1} -le 2 ]];
then
IFS='|' read SYMBOL NAME ATOMIC_NUMBER <<< "$($PSQL "SELECT symbol, name, atomic_number FROM elements WHERE symbol = '$1'")" 
else

IFS='|' read NAME SYMBOL ATOMIC_NUMBER <<< "$($PSQL "SELECT  name, symbol, atomic_number FROM elements WHERE name = '$1'")" 
fi
fi
if [[ -z $NAME ]];
then
echo "I could not find that element in the database."
return

fi

IFS='|' read TYPE_ID BOILING MELTING ATOMIC_MASS <<< "$($PSQL "SELECT  type_id, boiling_point_celsius, melting_point_celsius ,atomic_mass FROM properties WHERE atomic_number = $ATOMIC_NUMBER")" 
IFS='|' read TYPE <<< "$($PSQL "SELECT  type FROM types WHERE type_id= $TYPE_ID")" 

echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $ATOMIC_MASS amu. $NAME has a melting point of $MELTING celsius and a boiling point of $BOILING celsius."
}
MAIN_MENU $1