 # Create a token and save it to a variable

`export APPS_TOKEN=$(vault token create -policy=apps -format=json | jq -r .auth.client_token)`{{execute T2}}

# Check it was created

`echo $APPS_TOKEN`{{execute T2}}

# Login with the token

`vault login $APPS_TOKEN`{{execute T2}}

