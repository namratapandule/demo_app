version=`cat .version`
export VERSION=$version
docker run -p 90:80 --name nodeapi -d nodeapi/:node:12.18.1:$VERSION