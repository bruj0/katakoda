# Check capabilities against the secret engine

`vault token capabilities apps/data`{{execute T2}}

`vault token capabilities apps/data/my-secret`{{execute T2}}

# Create various secret versions

`vault kv put apps/my-secret data=v1`{{execute T2}}

`vault kv put apps/my-secret data=v2`{{execute T2}}

`vault kv put apps/my-secret data=v3`{{execute T2}}

