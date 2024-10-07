#!/bin/bash
stream=${stream:-name}
while [ $# -gt 0 ]; do
   if [[ $1 == *"-"* ]]; then
       v="${1/-/}"
       declare $v="$2"
   fi
  shift
done

if [ -z "$v" ]
	then
			echo 'Who do you want to watch?'
			read varstreamname ;
		
			echo 'Alright, '$varstreamname' it is then.'
		
			while :
			do
			streamlink -o "$(date +"%Y-%m-%d-%H-%M-$varstreamname.mp4")" https://picarto.tv/$varstreamname best
			sleep 1
			echo "Press CTRL+C to stop..."
			sleep 90
			done
	else
			while :
			do
			streamlink -o "$(date +"%Y-%m-%d-%H-%M-$stream.mp4")" https://picarto.tv/$stream best
			sleep 1
			echo "Press CTRL+C to stop..."
			sleep 90
			done
	fi

#	read varstreamname ;
#
#	echo 'Alright, '$varstreamname' it is then.'
#
#	while :
#	do
#	streamlink -o "$(date +"%Y-%m-%d-%H-%M-$varstreamname.mp4")" https://picarto.tv/$varstreamname best
#	sleep 1
#	echo "Press CTRL+C to stop..."
#	sleep 30
#	done

