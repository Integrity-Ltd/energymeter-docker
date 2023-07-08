#!/bin/bash
cd ~/energymeter-timed-service
npx ts-node src/index.ts &
cd ~/energymeter-api
npx ts-node src/app.ts &
cd ~/energymeter-admin
npx react-scripts start