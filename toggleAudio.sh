#! /usr/bin/env bash

if pamixer --get-volume-human | grep -q "muted"
then
	notify-send "Audio" "unmuting" && pamixer -t
else
	notify-send "Audio" "muting" && pamixer -t
fi
