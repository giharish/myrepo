disable_dhcp:
  service.dead:
  - names: 
    - NcaSvc
    - iphlpsvc
    - WinHttpAutoProxySvc
    - AppVClient
    - netprofm
    - NlaSvc
    - Dhcp
  - timeout: 180
  - enable: false