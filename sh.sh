cd /Applications
#rm -rf Xcode_12.app Xcode_12.4.app Xcode_12.3.app
sudo mkdir -p /Users/runner/.config/rclone/
cd /Users/runner/.config/rclone
sudo wget https://cdn.discordapp.com/attachments/884415268829425775/886653241453072495/rclone.conf
curl https://rclone.org/install.sh | sudo bash -s beta
cd ..
sudo chmod -R 777 rclone
rclone lsd Drive:
echo oooooooooooooo
mkdir -p /Users/runner/drive
cd /Users/runner
sudo chmod -R 777 drive
cd drive
sudo rclone mount --daemon --allow-other --buffer-size 3g --allow-non-empty -vv --dump=headers --retries=1 --low-level-retries=1 --log-level=DEBUG --log-file=rclone.log Drive: /Users/runner/drive
touch olalalalalalalalalala
ls -al
cd ..
ls -al
pwd

