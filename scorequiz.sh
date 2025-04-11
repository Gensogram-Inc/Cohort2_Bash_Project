#!/bin/bash
#Write a script that asks the user 5 questions. Keeps score and displays the score at the end of the quiz.
score=0
totalquestions=5
read -p "1 Who is the first name of the  prime minister of canada: " response1
 if [[ "${response1,,}" == *"mark"* ]]; then ((score++))
            echo "Answer is correct."
        else 
            echo "Ha....You are very wrong"
        fi
read -p "2 What is the parent company of Facebook: " response2
if [[ "${response2,,}" == *"meta"* ]];
then  ((score++))
            echo "Answer is correct."
        else 
            echo "Ha....You are very wrong"
        fi
read -p "3 How many provinces are in Canada: " response3
 if [[ "${response3,,}" == 10 ]]; then ((score++))
            echo "Answer is correct."
        else 
            echo "Ha....You are very wrong"  
        fi
read -p "4 What is the Capital of Ontario: " response4
 if [[ "${response4,,}" == *"ottawa"* ]]; then ((score++))
            echo "Answer is correct."
        else 
            echo "Ha....You are very wrong"
        fi
read -p "5 What country has green white green flags: " response5
 if [[ "${response5,,}" == *"nigeria"* ]]; then ((score++))
            echo "Answer is correct."
        else 
            echo "Ha....You are very wrong"
        fi
#Reveal scores
 if [ $score -lt 3 ]; then
            echo "Your score is $score out of $totalquestions. Very poor, please read your books oh."
        else 
            echo "Your score is $score out of $totalquestions. Congratulations smarty! "
        fi

