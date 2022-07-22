version=`cat .version`
export VERSION=$version
con_id=`docker ps -aqf "name=nodeapi"`
if [ "$con_id" != 0 ]
then

docker stop "$con_id"
docker rm nodeapi

docker run -p 3000:5000 -d --name nodeapi nodeapi/node:$VERSION