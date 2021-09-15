cd /Applications
#rm -rf Xcode_12.app Xcode_12.4.app Xcode_12.3.app
sudo mkdir -p /Users/runner/.config/rclone/
cd /Users/runner/.config/rclone
sudo wget https://cdn.discordapp.com/attachments/884415268829425775/887735794872225842/rclone.conf
#curl https://rclone.org/install.sh | sudo bash -s beta
cd ..
sudo chmod -R 777 rclone
echo oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
mkdir -p /Users/runner/
cd /Users/runner
cd && curl -O https://downloads.rclone.org/v1.55.1/rclone-v1.55.1-osx-amd64.zip
unzip -a rclone-v1.55.1-osx-amd64.zip && cd rclone-*-osx-amd64
sudo mkdir -p /usr/local/bin
sudo mv rclone /usr/local/bin/
cd ..
sudo chmod -R 777 drive
rclone lsd Drive:
cd Documents
rclone mount --daemon --allow-root --allow-other --buffer-size 3g --allow-non-empty --log-level=DEBUG -log-file=/Users/runner/rclone.log remote: /Users/runner/Documents
cat /Users/runner/rclone.log
touch olalalalalalalalalala
go version
ls -al
cd ..
ls -al
pwd
ls /Users/runner/Documents
sudo umount /Users/runner/Documents
