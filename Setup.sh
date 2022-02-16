#!/bin/bash
####################################
echo "First time boot of Kali Linux"
PWD=$(pwd)	#saves current working DIR to variable
#echo $PWD
####################################
echo "apt update"
sudo apt-get update -y
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
echo "apt update"
sudo apt-get update -y
cd ..
####################################
cd Lists
fileINSTALLGIT='installGit.sh'
if [ ! -f "$fileINSTALLGIT" ] 
then
   echo "$0: File '${fileINSTALLGIT}' not found."
else
   echo "File $fileINSTALLGIT exists."
   ./$fileINSTALLGIT
fi
cd ..
####################################
cd Lists
fileWIRESHARK='wireshark-non-su.sh'
if [ ! -f "$fileWIRESHARK" ] 
then
   echo "$0: File '${fileWIRESHARK}' not found."
else
   echo "File $fileWIRESHARK exists."
   ./$fileWIRESHARK
fi
echo "apt update"
sudo apt-get update -y
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
         fileOPENSTEGO64='openStego64bit.sh'
         if [ ! -f "$fileOPENSTEGO64" ]
         then
            echo "$0: File '${fileOPENSTEGO64}' not found."
         else
            echo "File $fileOPENSTEGO64 exists."
            ./$fileOPENSTEGO64
         fi
         cd ..
      break
   elif [ "$OSbitType" = "32" ]
   then
      echo "You have entered 32 bit"
      cd Lists
         fileOPENSTEGO32='openStego32bit.sh'
         if [ ! -f "$fileOPENSTEGO32" ]
         then
            echo "$0: File '${fileOPENSTEGO32}' not found."
         else
            echo "File $fileOPENSTEGO32 exists."
            ./$fileOPENSTEGO32
         fi
         cd ..
      break
   else
      echo "Incorrect value entered"
   fi
done
###################################
