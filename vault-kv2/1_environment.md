# Setting up the environment
* Enable the kv2 secret engine and mount it at apps

`vault secrets enable -version=2 -path=apps kv`{{execute T2}}

* Inspect the base policy

`apps.hcl`{{open}}

```
# Allow devs to see the attributes on their token
path "auth/token/lookup-self" {
capabilities = ["read"]
}

# Allow devs to lookup any data under the kv/apps tree
path "apps/data/*" {
capabilities = ["create", "read", "update", "delete", "list"]
}

path "apps/delete/*" {
capabilities = [ "update" ]
}

# Allow devs to list data under the kv/apps tree
path "apps/metadata/*" {
capabilities = ["list"]
}

# Allow devs to see the apps tree
path "apps/*" {
capabilities = ["list"]
}
```



* Write the policy
`vault policy write apps apps.hcl`{{execute T2}}

