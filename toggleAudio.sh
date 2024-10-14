#! /usr/bin/env bash

if pamixer --get-volume-human | grep -q "muted"
then
	notify-send -t 1000 "Audio" "unmuting" && pamixer -t
else
	notify-send -t 1000 "Audio" "muting" && pamixer -t
fi
