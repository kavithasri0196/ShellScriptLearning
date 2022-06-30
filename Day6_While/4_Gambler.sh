#!/bin/bash
money=100;
numberOfWins=0;
numberOfBets=0;

function placeBet(){
((numberOfBets++));
if [ $((RANDOM%2)) == 1 ]
then
((numberOfWins++))
((money++))
else
((money--))
fi
}

while [ $money -lt 200 ]  &&  [ $money -gt 0 ]
do
placeBet;
done

echo User won: $numberOfWins games. With number of bets: $numberOfBets . Current balance: $money

