#!/bin/bash
echo "Enter the filename"
read fil
if [[ -f $fil ]]
then
echo "File $fil already exsists"
else
echo "File $fil doesnt exsists"
echo "Enter 'yes' to create file $fil"
read conf
if [[ $conf == "yes" ]]
then
echo "User confirmed to create file $fil"
touch $fil
if [[ -f $fil ]]
then
echo "File $fil got created successfully post user confirmation"
stat $fil
echo "Enter the contenet1"
read con1
echo "enter the content2"
read con2
echo -e "$con1\n$con2" >>$fil
echo "Below are content of file $fil"
cat $fil
echo -e "Enter '1' to know the size of file\n'2' to change the permission of file\n'3' to change owner\n'4' to change the group\n'5' to know inode of file\n'6' compress file\n'7' create hardlink\n'8' to crete softlink\n'9' copy file"
read opt
ls -ltr $fil
if [[ $opt -eq 1 ]]
then
du -sh $fil
elif [[ $opt -eq 2 ]]
then
echo "Enter the new permission"
read per
chmod $per $fil
ls -ltr $fil
elif [[ $opt -eq 3 ]]
then
echo "Enter the new owner name"
read own
chown $own $fil
ls -ltr $fil
elif [[ $opt -eq 4 ]]
then
echo "Enterthe  groupname"
read gp
chgrp $gp $fil
ls -ltr $fil
elif [[ $opt -eq 5 ]]
then
ls -litr $fil
elif [[ $opt -eq 6 ]]
then
gzip $fil
ls -ltr $fil.gz
elif [[ $opt -eq 7 ]]
then
echo "Enter the hardlink filename"
read hd
ln $fil $hd
ls -litr $fil $hd
elif [[ $opt -eq 8 ]]
then
echo "Enterthe softlink name"
read sd
ln -s $fil $sd
ls -litr $fil $sd
elif [[ $opt -eq 9 ]]
then
echo "enter the destnation folder"
read dst
cp -v $fil $dst
fi
else
echo "File $fil not created successfully post user confirmation due to permission issues"
fi
else
echo "User not confirmed to create file $fil"
fi
fi