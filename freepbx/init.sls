asterisk:
  pkg: 
    - installed 
  service: 
    - running 
  file.recurse: 
    - name: /etc/asterisk 
    - source: salt://etc/asterisk 
    - user: asterisk 
    - group: asterisk
    - require: 
      - pkg: asterisk 
    - watch_in: 
      - service: asterisk 
