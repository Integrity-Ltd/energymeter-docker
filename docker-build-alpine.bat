docker build --no-cache -f Dockerfile.alpine -t energymeter:1.0-alpine .
docker tag energymeter:1.0-alpine integritypz/energymeter:1.0-alpine
REM docker push integritypz/energymeter:1.0-alpine