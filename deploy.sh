version=`cat .version`
export VERSION=$version
docker run -p 80:80 --name nodeapi -d nodeapi/node:$VERSION