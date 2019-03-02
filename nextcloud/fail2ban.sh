sudo cp $PWD/nextcloud.local /etc/fail2ban/filter.d/
STRING=$(cat <<- EOM
[nextcloud]
  enabled=true
  port=80,443
  protocol=tcp
  filter=nextcloud
  logpath=/var/lib/docker/volumes/nkayinfonextcloud_data/_data/nextcloud.log
EOM
)

grep -qxF "$STRING" /etc/fail2ban/jail.local || echo "$STRING" >> /etc/fail2ban/jail.local 
