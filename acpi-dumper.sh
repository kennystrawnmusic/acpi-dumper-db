#!/usr/bin/sudo /bin/bash
mkdir dumps
acpi-dumper --name $1
mv dumps/* .
rmdir dumps

cd $1
for table in /sys/firmware/acpi/tables; do
    cat $table > $(echo $table | cut -d\/ -f6).dat
    iasl -d $(echo $table | cut -d\/ -f6).dat
done