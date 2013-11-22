asterisk:
  pkg: 
    - installed 
  service: 
    - running 
  file.recurse: 
    - name: /etc/asterisk 
    - require: 
      - pkg: asterisk 
      - watch_in: 
        - service: asterisk 
      - source: salt://etc/asterisk 
      - user: asterisk 
      - group: asterisk
