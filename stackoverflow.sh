json=$(curl -v -u $user1:$pass1 -X POST 'https://budda-tammu.atlassian.net/rest/api/2/myself' --header 'Content-Type:application/json' --header 'Accept:application/json')
echo "$json"
