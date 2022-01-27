# Kali Linux First Time Installation Bash Script
A Bash Script that helps set up Kali after installation

This Script was created to save me time when setting up a Kali Box for the first time.
This script does the following:
	* apt update
	* Fixes the issue armitage has by setting the system to run msfdb init after every reboot
	* Installs openstego based on OS bit version (32 vs 64)	*If Else*

To run the script, drop First-Time-Kali-Script.sh, READ-ME and the Lists (DIR) into whichever directory you wish 
and then run the script with ./First-Time-Kali-Script.sh	

*Note you will need to make all files executable*
Download the .zip file and run # unzip /file

Last Updated on: 4/19/2018
Created by Cameron Gore
