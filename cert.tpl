## cert.tpl
{{ with secret "pki_int/issue/logicmy-com" "ttl=5m" "common_name=meow.logicmy.com" }}
{{ .Data.certificate }}
{{ end }}
