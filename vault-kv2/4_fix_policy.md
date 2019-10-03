The documentation to delete for the CLI is at: https://www.vaultproject.io/docs/commands/kv/delete.html

# Try to delete v2


`vault kv delete -versions=2 apps/data/my-secret`{{execute T2}}

# Try to delete the last version

`vault kv delete apps/data/my-secret`

# Modify policy to permit deleting any version
The METHOD to delete versions is DELETE	to the endpoint /apps/data/:path

That means the policy has to match this method at `apps/delete` with the capability of `update` because DELETE will modify it.

```
path "apps/delete/*" {
capabilities = [ "update" ]
}
```

Add this to the file `apps.hcl`{{open}}