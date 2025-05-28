#Adding comment 2
#Adding comment to test Pull request
#!/bin/bash
#Assignment 3: Simple Quiz Game: Write a script that asks the user 5 questions. Keeps score and displays the score at the end of the quiz.

echo "Welcome students to your final quiz"
echo "The questions cover various topics, including geography, math, astronomy, chemistry, and literature."
echo "Each question is worth 20 points!!!!!!!!!"
quiz() {
  echo "The quiz starts now!"
  echo "Please answer the following questions:"
  read -p "Enter your name: " name
  username=$name
  score=0
  total=0
  quiz=0

  # Question 1
  read -p "1. What is the capital of France? " answer1
  ((total += 20))  # add 20 points to total
  if [[ "${answer1,,}" == "paris" ]]; then
    ((score += 20))
    ((quiz+=1))
    echo "Correct!"
  else
    echo "Incorrect. The correct answer is Paris."
  fi
 

  # Question 2
  read -p "2. What is 2 + 2? " answer2
  ((total += 20))  # add 20 points to total
  if [[ "${answer2,,}" == "4" ]]; then
    ((score += 20))
    ((quiz+=1))
    echo "Correct!"
  else
    echo "Incorrect. The correct answer is 4."
  fi

  # Question 3
  read -p "3. What is the largest planet in our solar system? " answer3
  ((total += 20))  # add 20 points to total
  if [[ "${answer3,,}" == "jupiter" ]]; then
    ((score += 20))
    ((quiz+=1))
    echo "Correct!"
  else
    echo "Incorrect. The correct answer is Jupiter."
  fi

  # Question 4
  read -p "4. What is the chemical symbol for gold? " answer4
  ((total += 20))  # add 20 points to total
  if [[ "${answer4,,}" == "au" ]]; then
    ((score += 20))
    ((quiz+=1))
    echo "Correct!"
  else
    echo "Incorrect. The correct answer is au."
  fi

  # Question 5
  read -p "5. Who wrote 'Romeo and Juliet'? " answer5 
  ((total += 20))  # add 20 points to total
    if [[ "${answer5,,}" == "shakespeare" ]]; then
        ((score += 20))
        ((quiz+=1))
        # Increment the quiz score by 1 for each correct answer
        echo "Correct!"
    else
        echo "Incorrect. The correct answer is Shakespeare."
    fi


    # Display final score
    echo " ${username^} thank you for completing the test, you answered $quiz out of 5 questions correctly."
    echo "Your final score is: $score out of $total, which is $((score * 100 / total))%."

    if [ "$score" -eq 100 ]; then
        echo "��� Perfect score! You are a genius!"
    elif [ "$score" -ge 65 ]; then
        echo "��� Good job! You passed the quiz."
    else
        echo "��� Better luck next time!"
    fi

}
# Call the quiz function to start the game
quiz

