#!/usr/bin/sudo /bin/bash
mkdir dumps
acpi-dumper --name $1
mv dumps/* .
rmdir dumps