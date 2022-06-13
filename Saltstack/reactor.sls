Send Email:
  local.smtp.send_msg:
    - tgt: {{ data['id'] }}
	- kwarg:
	  - name:'This is a notification from beacon on the host: {{ data['id'] }}'. SNMP Service is stopped/disabled'
	  - recipient: mheit@manipalhospitals.com
	  - profile: my-smtp-config
	  - subject: "SNMP Beacon Notification"
	  - sender: ashish.gupta@manipalhospitals.com