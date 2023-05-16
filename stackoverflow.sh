#!/bin/bash
json=$(curl -v -u $user1:$pass1 -X POST 'https://budda-tammu.atlassian.net/rest/api/2/myself' --header 'Authorization: Basic $newtoken' --header 'Accept:application/json')
echo "Curl executed succeeded!!!"
echo "Data of curl is $json"
echo "Curl executed succeeded!!!"
echo "Data of curl is $newtoken"
curl -X POST 'https://budda-tammu.atlassian.net/rest/api/2/issue/' --header 'Accept:application/json' --header 'Authorization: Basic $newtoken' --data '{"fields": {"project":{"key":"BTAM"}, "summary": "REST EXAMPLE API", "description": "Creating an issue via REST API", "issuetype": {"name": "Task"}}}'
echo "Sonar Quality gate succeeded!!!"
