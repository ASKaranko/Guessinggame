all: README.md

README.md:: 
	echo "The title of the project: Guessing quantity of files in the directory" > README.md
	echo "Make was run at `date +%F_%H:%M:%S`" >> README.md
	echo "The number of lines of code contained in guessinggame.sh: `cat guessinggame.sh | wc -l`" >> README.md
