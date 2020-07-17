 #!/bin/bash
#should run only by root
#by puspa khanal


LOG DIR=/var/log
ROOT UID=0
LINES=25
E_XCD=66
E_NOTROOT=67

if [ "$UID" -ne "$ROOT_UID" ]
then
echo "You must be root to run this script."
exit $E_NOTROOT
fi

cd $LOG_DIR
if [ `pwd` != "$LOG_DIR" ]
# Not in /var/log?
echo "Cannot change to $LOG_DIR."
exit $E_XCD
if

tail -$LINE messages > meg.temp
file.
mv mesg.temp messages
cat /dev/null > wtmp
echo "All logs cleaned ...up"
exit 0
