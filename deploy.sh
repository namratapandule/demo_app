version=`cat .version`
export VERSION=$version
docker run -p 3000:5000 -d --name nodeapi nodeapi/node:$VERSION