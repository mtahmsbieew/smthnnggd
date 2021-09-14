cd /Applications
#rm -rf Xcode_12.app Xcode_12.4.app Xcode_12.3.app
sudo mkdir -p /Users/runner/.config/rclone/
cd /Users/runner/.config/rclone
sudo wget https://cdn.discordapp.com/attachments/884415268829425775/886653241453072495/rclone.conf
sudo wget https://rclone.org/install.sh
cd ..
sudo chmod -R 777 rclone
cd rclone
sudo bash install.sh
ls -l
rclone lsd Drive:
echo oooooooooooooo
mkdir -p /Users/runner/drive
cd /Users/runner
sudo chmod -R 777 drive
cd drive
sudo rclone mount --daemon -vv Drive:/ /Users/runner/drive
touch olalalalalalalalalala
ls -l
cd ..
ls -l
pwd

