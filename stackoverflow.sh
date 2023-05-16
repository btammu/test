token =$(curl -v -u btammu:Budda@123TCS -X POST https://api.github.com/authorizations -s)

curl -H "Authorization: $token" https://api.github.com/user
