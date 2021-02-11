apt purge amavis -y
apt purge amavisd-new -y
apt purge spamassassin -y
apt purge razor -y

rm -R /etc/razor/
rm -R /etc/spamassassin/

apt purge clamav -y
apt purge clamav-daemon -y
apt purge clamav-base -y
apt purge uwsgi -y

rm -R /var/log/uwsgi/
rm -R /etc/uwsgi/

apt purge opendkim -y
apt purge postfix -y
apt purge postwhite -y
apt purge dovecot -y
apt purge dovecot-core dovecot-imapd dovecot-lmtpd dovecot-managesieved dovecot-pgsql dovecot-sieve -y

rm -R /var/lib/dovecot/
rm -R /etc/dovecot/

rm -R /srv/automx/
rm -R /srv/modoboa/
rm -R /srv/radicale/
rm -R /srv/vmail/

echo "Now proceed with deleting the users and related groups (amavis, clamav, modoboa, radicale, razor)"
echo "Also delete the attached process if any error is caused while deleting the user"

echo "Now delete related users, copy these commands one at a time- Use kill command to stop process which interrupts removing user"

echo "deluser vmail"
echo "deluser opendkim"
echo "deluser radicale"
echo "deluser automx"
echo "deluser modoboa"
echo "deluser clamav"

echo "After deleting users: run this -> delgroup automx && delgroup modoboa"
echo "Lastly make sure to remove the nginx configuratin file from the /etc/nginx/sites-enabled/ folder"
echo "Good luck for the installation"
