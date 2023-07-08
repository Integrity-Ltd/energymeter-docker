docker build --no-cache -t energymeter:1.0 .
docker tag energymeter:1.0 integritypz/energymeter:1.0
REM docker push integritypz/energymeter:1.0