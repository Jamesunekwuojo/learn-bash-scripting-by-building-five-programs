#!/bin/bash

# Program to tell a persons fortune

echo -e "\n~~ Fortune Teller ~~\n"

RESPONSES=("Yes" "No" "Maybe" "Outlook good" "Don't count on it" "Ask again later" )

echo ${RESPONSES[5]}

N=$(( $RANDOM % 6 ))


echo ${RESPONSES[$N]}

function GET_FORTUNE() {
  if [[ ! $1 ]]
  then
    echo Ask a yes or no question:
  fi

  echo Ask a yes or no question:
  read QUESTION

}


until [[ $QUESTION =~ \?$ ]]
do
  GET_FORTUNE
done


