#!/bin/bash
cd ~/energymeter-timed-service
npx ts-node src/index.ts>log.txt 2>error.log.txt  &
cd ~/energymeter-api
npx ts-node src/app.ts>log.txt 2>error.log.txt &
cd ~/energymeter-admin
npx react-scripts start