
AUTHORIZATION=$(curl --location -u btammu:Budda@123TCS --request POST 'https://api.github.com/authorizations' --header 'Content-Type: application/x-www-form-urlencoded')

AUTHORIZATION = `jq '.access_token' <<< "$AUTHORIZATION"`

AUTHORIZATION=`echo "$AUTHORIZATION" | tr -d '"'`.

echo "$AUTHORIZATION"
