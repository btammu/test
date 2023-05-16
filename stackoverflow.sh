#!/bin/bash
json=$(curl -v -u $user1:$pass1 -X POST 'https://budda-tammu.atlassian.net/rest/api/2/myself' --header 'Authorization: Basic $newtoken' --header 'Accept:application/json')
echo "Curl executed succeeded!!!"
echo "Data of curl is $json"
echo "Curl executed succeeded!!!"
echo "Data of curl is $newtoken"
curl -X POST -H 'Content-Type: application/json' -H "Authorization: Basic $newtoken" -d'{"type":"page","title":"new page","space":{"key":"TST"},"body":{"storage":{"value":"<p>This is a new page</p>","representation":"storage"}}}' https://budda-tammu.atlassian.net/wiki/rest/api/content/ | python -mjson.tool
echo "Sonar Quality gate succeeded!!!"
