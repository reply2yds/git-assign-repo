readme.md: guessinggame.sh
	echo "# *The Unix Workbench* Assignment" > readme.md
	echo "## Date and Time:">> readme.md
	date >> readme.md
	#echo "*" >> readme.md
	echo "## Number of Lines:" >> readme.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> readme.md 
	#echo "*" >> readme.md

clean:
	rm readme.md
