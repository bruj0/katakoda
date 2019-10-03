# Test that the changes are working
## Log back to root

`vault login root`{{execute T2}}

## Write the policy

`vault policy write apps apps.hcl`{{execute T2}}

## Log back to the APPS token

`vault login $APPS_TOKEN`{{execute T2}}

## Try to delete version 1

`vault kv delete -versions=1 apps/my-secret`{{execute T2}}