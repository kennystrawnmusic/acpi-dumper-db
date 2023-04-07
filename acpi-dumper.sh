#!/usr/bin/sudo /bin/bash
mkdir dumps
acpi-dumper --name $1
mv dumps/* .
rmdir dumps

cd $1
for dump in *; do
    iasl -d $dump
done