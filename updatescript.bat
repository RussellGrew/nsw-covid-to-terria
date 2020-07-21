@echo off
REM Batch file to keep the COVID .csv current


REM procure data
curl https://data.nsw.gov.au/data/dataset/aefcde60-3b0c-4bc0-9af1-6fe652944ec2/resource/21304414-1ff1-4243-a5d2-f52778048b29/download/covid-19-cases-by-notification-date-and-postcode-local-health-district-and-local-government-area.csv > covid-19-cases-by-notification-date-and-postcode-local-health-district-and-local-government-area.csv

REM prepare Terria compatible .csv
node index.js

REM git commit
git add covid-19-cases-by-notification-date-and-postcode-local-health-district-and-local-government-area-for-terria.csv
git add covid-19-cases-by-notification-date-and-postcode-local-health-district-and-local-government-area.csv
git commit -m "Update data set"
git push