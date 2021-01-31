README.md: guessinggame.sh
	touch README.md
	echo "# Peer-graded Assignment: Bash, Make, Git, and GitHub" > README.md
	echo " " >> README.md	
	echo "**Make file created on:**" >> README.md
	echo " " >> README.md
	(date '+%d/%m/%Y_%H:%M:%S') >> README.md
	echo " " >> README.md	
	echo "**Number of lines of code contained in guessinggame.sh:** " >> README.md
	echo " " >> README.md	
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md