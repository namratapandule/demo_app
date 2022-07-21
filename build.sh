version=`grep version code/package.json` | cut -d"\"" -f 4`
echo "version="$version

filecount=`ls -a | grep .version |wc -l`
if[$filecount == 0]
then

echo "0.0.0" > .version

fi

pre_version=`cat .version`
echo "pre_version="$pre_version

if[$version=!$pre_version]

then

docker build -t nodeapi/node:12.18.1:$version .

echo $version > .version

fi