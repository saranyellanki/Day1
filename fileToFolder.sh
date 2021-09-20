echo "Enter the extension filename"
read extension

for item in `ls *.extension`
do
     fileNameWithoutExtension=`echo $item | awk -F. '{ print $1 }'`
     if [ -d $fileNameWithoutExtension ]
     then
         echo "Inside If Condition"
         rm -rf $fileNameWithoutExtension
     fi
     mkdir $fileNameWithoutExtension
     cp -r $item $fileNameWithoutExtension
done