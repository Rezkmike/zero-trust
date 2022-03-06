## consul-template.hcl
vault {
  address      = "https://vault.logicmy.com"

  vault_agent_token_file = ".env"
  unwrap_token = false
  renew_token  = false
}

syslog {
  enabled  = true
  facility = "LOCAL5"
}

template {
  source      = "/opt/docker/consul/config/cert.tpl"
  destination = "/opt/docker/proxy/certs/portainer.crt" 
  perms       = 0600
}

template {
  source      = "/opt/docker/consul/config/key.tpl"
  destination = "/opt/docker/proxy/certs/portainer.key" 
  perms       = 0600
  command     = "docker restart proxy-nginx-proxy-1"
}
