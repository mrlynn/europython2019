# Open Automator
# Click Folder Action
# Add a folder action for /Volumes
# Place this script in the text box
RSYNC=/usr/local/bin/rsync
RSYNCOPT=-avhs
LOGFILE=~/projects/university-courses/m220p/rsync.log
SOURCE=/Users/mlynn/projects/university-courses/m220p/repo1/europython2019/usbdrive
TARGET=europython
VOLUMES=/Volumes/NO NAME

for drive in $VOLUMES; do
	$RSYNC $RSYNCOPT ${SOURCE} '/Volumes/NO*NAME/europython2019/' --log-file=${LOGFILE}
done
