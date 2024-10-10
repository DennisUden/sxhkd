#!/bin/bash
cur=$(brightnessctl get)
max=$(brightnessctl max)
rel=$((${cur}*100/${max}))

notify-send -t 1000 "Brightness" "${rel}"

