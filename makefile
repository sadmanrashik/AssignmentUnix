all: README.md

README.md:guessinggame.sh
	touch README.md
	echo "#Guessing Game" >> README.md
	echo "##Date and time:" >> README.md
	date >>README.md
	echo "Number of lines: ">>README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
