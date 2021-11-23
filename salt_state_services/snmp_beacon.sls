snmp_beacon: 
  beacon.present: 
    - name: service 
    - save: False  
    - enabled: True
    - services: 
        SNMP: 
          onchangeonly: True 