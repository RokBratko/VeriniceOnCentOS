# Zero out the free space to save space in the final image:
dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY
dd if=/dev/zero of=/home/EMPTY bs=1M
rm -f /home//EMPTY
dd if=/dev/zero of=/tmp/EMPTY bs=1M
rm -f /tmp/EMPTY
dd if=/dev/zero of=/var/EMPTY bs=1M
rm -f /var/EMPTY
dd if=/dev/zero of=/var/log/EMPTY bs=1M
rm -f /var/log/EMPTY
dd if=/dev/zero of=/var/log/audit/EMPTY bs=1M
rm -f /var/log/audit/EMPTY