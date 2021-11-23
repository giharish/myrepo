{%- if data[data['service_name']]['running'] == False %}
Send Email:
  local.smtp.send_msg:
    - tgt: {{ data['id'] }}
	- kwarg:
	    name:'This is a notification from beacon on the host: {{ data['id'] }}'. SNMP Service is stopped/disabled'
	    recipient: recipient@xyz.com
	    profile: my-smtp-config
	    subject: "SNMP Beacon Notification"
	    sender: sender@xyz.com
	    server: mailhost FQDN/IP
        use_ssl: False
		username:
		password: