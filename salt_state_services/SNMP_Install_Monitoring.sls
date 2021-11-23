SNMP_Install:
  win_servermanager.installed:
  - name: SNMP-Service
  - recurse: true
Restart_Service:
  service.running:
  - names: 
    - SNMP
    - Winmgmt
  - timeout: 180
  - enable: true
  - require:
    - win_servermanager: SNMP_Install