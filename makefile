README.md:
	echo "Workbench Final Project" > README.md
	echo "\n" >> README.md
	date >> README.md
	echo "\n" >> README.md
	cat guessinggame.sh | wc -l | egrep "\d" >> README.md