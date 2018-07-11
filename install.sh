# this should install all of the scripts automatically
# to run, browse to the folder where you extracted the scripts
# right click and select "Open Terminal Here", then type
# (without quotation marks)
# "sudo bash install.sh"

function copy_scripts {
  cp -R -u -v ./scripts/* /home/$you/.config/caja/scripts
}

function change_permissions {
  for folder in "$(ls /home/$you/.config/caja/scripts)"
  do
    for file in "$(ls /home/$you/.config/caja/scripts/$folder)"
    do
      echo "Changing permissions for $folder/$file"
      chmod a+x /home/$you/.config/caja/scripts/$folder/$file
    done
  done
}

echo "Choose a user to install the scripts for"
echo "or hold CTRL-C to exit"
select you in "$(ls /home)"
do
  copy_scripts
  change_permissions
  break
done
