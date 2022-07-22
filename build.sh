version=`grep version package.json |  cut -d"\"" -f 4`
echo "version="$version

filecount=`ls -a | grep .version |wc -l`
if [ $filecount == 0 ] 
then

echo "0.0.0" > .version

fi

pre_version=`cat .version`
echo "pre_version="$pre_version

if [ "$pre_version" != "$version" ]

then

docker build -t nodeapi/node:$version .  && \

docker rmi nodeapi/node:$version && \

echo $version > .version

fi