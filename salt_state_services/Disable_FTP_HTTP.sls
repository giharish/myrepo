apache:
  service.dead:
  {% if grains['os'] == 'RedHat'%}
  - name: httpd
  {% elif grains['os'] == 'CentOS'%}
  - name: httpd
  {% elif grains['os'] == 'Ubuntu'%}
  - name: apache2
  {% elif grains['os'] == 'Debian'%}
  - name: apache2
  {% endif %}
  - enable: False
ftp:
  service.dead:
  - name: vsftpd
  - enable: False