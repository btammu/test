#!/bin/bash
token=$(curl -u $user1:$pass1 -X POST 'https://budda-tammu.atlassian.net/rest/api/2/myself' --header 'Accept:application/json' --header 'Content-Type: application/json' -S -f -d 'grant_type:authorization_code')
echo "Curl executed succeeded!!!"
echo "Data of curl is $token"
echo "Curl executed succeeded!!!"
echo "Data of curl is $newtoken"
curl -f -S -X POST 'https://budda-tammu.atlassian.net/rest/api/2/issue/' --header 'Content-Type: application/json' --header 'Authorization: Basic $newtoken' --data '{"fields": {"project":{"key": "BTAM"}, "summary": "REST EXAMPLE API", "description": "Creating an issue via REST API", "issuetype": {"name": "Task"}}}'
echo "Jira created successfully"
