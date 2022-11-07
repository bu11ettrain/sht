#!/bin/bash
#USAGE

function usage() {
        bname=`basename $0`
        echo -e "Usage: ${CYAN}$bname on|off${NOCOLOR}"
}

function on {
touch /etc/cron.d/lmc810
echo "@reboot root sleep 180 && nvidia-smi -lmc 810" > /etc/cron.d/lmc810
}

function off {
rm /etc/cron.d/lmc810
}

case "$1" in
	"") usage;;
	on) on;;
	off) off;;
	help) usage;;
	*) echo "Unrecongized option '$1'"; usage;;
esac

