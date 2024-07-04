# fullupdate-script
Simple bash script to fully update and empty trash.

/fullupd.sh/
Main script, A main function *fullupdate()* with 3 variables for creating the log file, a couple update commands and a remove trash command.
Also a if else statement to create a new file /synclogfile.txt/ if there isnt one, and add a line of text with current date for last completed sync.
At end of file the script calls the main function
