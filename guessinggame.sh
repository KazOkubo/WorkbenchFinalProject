# File: guessinggame.sh


function compare {
  local numfiles=$(ls -1 | wc -l)
  if [[ $1 -eq $numfiles ]]
  then
    echo "right"
  elif [[ $1 -gt $numfiles ]]
  then
    echo "large"
  else
    echo "small"
  fi
}

correct=0
while [[ $correct -ne 1 ]]
do
  echo -n "Guess: "
  read guess
  result=$(compare $guess)
  if [[ $result = "right" ]]
  then
    let correct=1
    echo 'Congratulations! You got it right!'
  elif [[ $result = "large" ]]
  then
    echo "Too large. Have another try."
  else
    echo "Too small. Have another try."
  fi
done
