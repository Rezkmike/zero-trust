## key.tpl
{{ with secret "pki_int/issue/logicmy-com" "ttl=5m" "common_name=meow.logicmy.com" }}
{{ .Data.private_key }}
{{ end }}
