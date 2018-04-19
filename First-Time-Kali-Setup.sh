#!/bin/bash
####################################
echo "First time boot of Kali Linux"
PWD=$(pwd)	#saves current working DIR to variable
#echo $PWD
####################################
echo "apt update"
sudo apt update
####################################
cd Lists
fileKEY='gpgKeyFixer.sh'
if [ ! -f "$fileKEY" ] 
then
   echo "$0: File '${fileKEY}' not found."
else
   echo "File $fileKEY exists."
   ./$fileKEY
fi
####################################
cd Lists
fileROLLING='kaliRollingRepoFix.sh'
if [ ! -f "$fileROLLING" ] 
then
   echo "$0: File '${fileROLLING}' not found."
else
   echo "File $fileROLLING exists."
   ./$fileROLLING
fi
cd ..
####################################
cd Lists
fileUPGRADE='upgrade.sh'
if [ ! -f "$fileUPGRADE" ]
then
   echo "$0: File '${fileUPGRADE}' not found."
else
   echo "File $fileUPGRADE exists."
   ./$fileUPGRADE
fi
cd ..
####################################
cd Lists
fileARMITAGE='armitageSetupOnEveryReboot.sh'
if [ ! -f "$fileARMITAGE" ]
then
   echo "$0: File '${fileARMITAGE}' not found."
else
   echo "File $fileARMITAGE exists."
   ./$fileARMITAGE
fi
cd ..
####################################

#OPENSTEGO Checker

####################################

printf "\n#################################################################################"
printf "\n#################################################################################"
printf "\n _______  _______  _______  __    _  _______  _______  _______  _______  _______ "
printf "\n|       ||       ||       ||  |  | ||       ||       ||       ||       ||       |"
printf "\n|   _   ||    _  ||    ___||   |_| ||  _____||_     _||    ___||    ___||   _   |"
printf "\n|  | |  ||   |_| ||   |___ |       || |_____   |   |  |   |___ |   | __ |  | |  |"
printf "\n|  |_|  ||    ___||    ___||  _    ||_____  |  |   |  |    ___||   ||  ||  |_|  |"
printf "\n|       ||   |    |   |___ | | |   | _____| |  |   |  |   |___ |   |_| ||       |"
printf "\n|_______||___|    |_______||_|  |__||_______|  |___|  |_______||_______||_______|"
printf "\n "
printf "\n#################################################################################"
printf "\n#################################################################################\n"
loop="yes"
while [ $loop = "yes" ]
do
read -p "What is your OS bit Type? (32 or 64): " OSbitType
   if [ "$OSbitType" = "64" ]
   then
      echo "You have entered 64 bit"
      cd Lists
         fileOPENSTEGO64='openStego64.sh'
         if [ ! -f "$fileOPENSTEGO64" ]
         then
            echo "$0: File '${fileOPENSTEGO64}' not found."
         else
            echo "File $fileOPENSTEGO64 exists."
            ./openStego64bit.sh
         fi
         cd ..
      break
   elif [ "$OSbitType" = "32" ]
   then
      echo "You have entered 32 bit"
      cd Lists
         fileOPENSTEGO32='openStego32.sh'
         if [ ! -f "$fileOPENSTEGO32" ]
         then
            echo "$0: File '${fileOPENSTEGO32}' not found."
         else
            echo "File $fileOPENSTEGO32 exists."
            ./openStego32bit.sh
         fi
         cd ..
      break
   else
      echo "Incorrect value entered"
   fi
done
###################################
