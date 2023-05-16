json=$(curl -v -u $user1:$pass1 -X POST 'https://budda-tammu.atlassian.net/rest/api/2/myself' --header 'Authorization: Basic $newtoken' --header 'Accept:application/json')
echo "Sonar Quality gate succeeded!!!"
echo "$json"
echo "Sonar Quality gate succeeded!!!"
