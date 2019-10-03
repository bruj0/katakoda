#!/usr/bin/env bash
curl -s -L http://assets.joinscrapbook.com/unzip -o /usr/local/bin/unzip
chmod +x /usr/local/bin/unzip

curl -s -L -o ~/vault.zip https://releases.hashicorp.com/vault/1.2.3/vault_1.2.3_linux_amd64.zip &&
unzip -d /usr/local/bin ~/vault.zip && rm ~/vault.zip

export VAULT_ADDR='http://127.0.0.1:8200'

apt-get install -y jq

#ssh -oStrictHostKeyChecking=no root@host01 "curl -L http://assets.joinscrapbook.com/unzip -o /usr/bin/unzip && chmod +x /usr/bin/unzip && curl -L -o ~/vault.zip https://releases.hashicorp.com/vault/1.2.3/vault_1.2.3_linux_amd64.zip && unzip -d  /usr/bin/ ~/vault.zip && rm ~/vault.zip && apt-get install -y jq &$ export VAULT_ADDR='http://127.0.0.1:8200' &"
