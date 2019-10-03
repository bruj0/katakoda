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
