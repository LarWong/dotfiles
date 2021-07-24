#!/bin/bash

if nmcli n | grep -q "disabled" ; then
	nmcli networking on && notify-send -i placeholder "WIFI enabled" " Your wireless adaptor has been enabled."
else
	nmcli networking off && notify-send -i placeholder "WIFI disabled" "Your wireless adaptor has been disabled."
fi

