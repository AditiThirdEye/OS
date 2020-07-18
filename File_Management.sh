echo Enter the Directory Name :
read dirName
mkdir $dirName
cd $dirName
cont="y"
while [ $cont = "y" ]
do
   echo 1. Create file
   echo 2. Create directory
   echo 3. Search file
   echo 4. Search directory
   echo 5. Delete file
   echo 6. Delete directory
   echo 7. Rename file
   echo 8. Display contents of current directory
   echo 9. Change directory
   echo 10. Exit
   read choice
   case $choice in
     1)
      echo "Enter file name"
      read fname
      if [ -f $fname ]
      then
        echo File name already exists
      else
        touch $fname
        echo File created
      fi
      ;;
    2)
      echo "Enter directory name"
      read dirName
      if [ -d $dirName ]
      then
        echo Directory name already exists
      else
        mkdir $dirName
        echo Directory created
      fi
      ;;
    3)
      echo Enter file name
      read fname
      if [ -f $fname ]
      then
        echo File found
      else
        echo file not found
      fi
      ;;
    4)
      echo Enter directory name
      read dirName
      if [ -d $dirName ]
      then
        echo Directory found
      else
        echo Directory not found
      fi
      ;;
    5)
    echo Enter file name
    read fname
    if [ -f $fname ]
    then
      rm $fname
      echo File deleted
    else
      echo No such file exists
    fi
    ;;
  6)
    echo Enter Directory name
    read dirName
    if [ -d $dirName ]
    then
      rmdir $dirName
      echo Directory deleted
    else
      echo No such directory exists
    fi
    ;;
  7)
    echo Enter the file to be renamed
    read fname
    if [ -f $fname ]
    then
      echo Enter the new name
      read newfile
      mv $fname $newfile
    else
      echo No such file exists
    fi
    ;;
  8)
    echo Files are
    ls
    ;;
  9)
    echo Enter the name of directory
    read dir
    cd $dir
    ;;
  10)
    cont="N"
    ;;
  esac
 done
