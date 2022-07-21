version=`cat .version`
export VERSION=$version
docker run -p 3000:5000 --name nodeapi -d nodeapi/node:$VERSION