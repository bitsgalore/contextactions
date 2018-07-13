#!/bin/bash

echo "Choose a user to install the scripts for"
echo "or hold CTRL-C to cancel and exit"
select you in "$(ls /home)"
do
  cp -Rv ./scripts/* /home/$you/.config/caja/scripts
  #change_permissions
  for file in $(ls -d /home/$you/.config/caja/*/*/*)
    do
      echo "Changing permissions for $file"
      chown -R $you $file
      chmod 755 $file
      echo "$file is now executable"
    done
  break
done
