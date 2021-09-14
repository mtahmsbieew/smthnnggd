cd /Applications
#rm -rf Xcode_12.app Xcode_12.4.app Xcode_12.3.app
sudo curl https://rclone.org/install.sh --http1.1 | bash -s beta
sudo mkdir -p /Users/runner/.config/rclone/
cd /Users/runner/.config/rclone
sudo wget https://cdn.discordapp.com/attachments/884415268829425775/886653241453072495/rclone.conf
cd ..
chmod -R 777 rclone
ls -l
mkdir -p /Users/runner/drive
cd /Users/runner
cd drive
rclone ls Drive:/
echo ls
sudo rclone mount --daemon -vv Drive: /Users/runner/drive
ls -l
cd ..
ls -l
pwd
