
json=$(curl -v -u $user1:$pass1 -X POST \'https://budda-tammu.atlassian.net/rest/api/2/myself\')
echo $json
token=$(echo $json | sed "s/{.*\\"Authorization\\":\\"\\([^\\"]*\\).*}/\\1/g")
echo $token
