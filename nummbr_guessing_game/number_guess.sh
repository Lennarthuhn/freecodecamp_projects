#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
NUMBER=$(($RANDOM % 1000 + 1))


PLAY(){


read GUESS

if [[ ! $GUESS =~ ^[0-9]+$ ]];
then
echo "That is not an integer, guess again:"
PLAY $1
fi

if [[ $NUMBER -lt $GUESS ]];
then
echo "It's lower than that, guess again:"
PLAY $(( $1 + 1))
fi

if [[ $NUMBER -gt $GUESS ]];
then
echo "It's higher than that, guess again:"
PLAY $(( $1 + 1))
fi

if [[ $NUMBER == $GUESS ]];
  then
  echo "You guessed it in $1 tries. The secret number was $NUMBER. Nice job!"
    if [[ $1 -gt $HIGH_SCORE ]];
    then
    INSERT_GAME_RESULT=$($PSQL "UPDATE users SET games_played =  games_played + 1 , high_score = $1 WHERE name ='$NAME'")
    
    else
    INSERT_GAME_RESULT=$($PSQL "UPDATE users SET games_played = games_played + 1 WHERE name ='$NAME'")
    fi
  exit
fi

}

echo "Enter your username:"
read NAME

IFS='|' read  GAMES_PLAYED HIGH_SCORE <<< $($PSQL "SELECT games_played, high_score FROM users WHERE name = '$NAME'")

if [[ -z $GAMES_PLAYED ]];
then
echo Welcome, $NAME! It looks like this is your first time here.
INSERT_USER_RESULT=$($PSQL "INSERT INTO users(name) VALUES('$NAME')")
GAMES_PLAYED=0
else
echo Welcome back, $NAME! You have played $GAMES_PLAYED games, and your best game took $HIGH_SCORE guesses.
fi

echo "Guess the secret number between 1 and 1000:"
PLAY 1

