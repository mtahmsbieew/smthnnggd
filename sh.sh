cd /Applications
#rm -rf Xcode_12.app Xcode_12.4.app Xcode_12.3.app
sudo mkdir -p /Users/runner/.config/rclone/
cd /Users/runner/.config/rclone
sudo wget https://cdn.discordapp.com/attachments/884415268829425775/887735794872225842/rclone.conf
#curl https://rclone.org/install.sh | sudo bash -s beta
cd ..
sudo chmod -R 777 rclone
mkdir -p /Users/runner/
cd /Users/runner
cd && curl -O https://downloads.rclone.org/v1.55.1/rclone-v1.55.1-osx-amd64.zip
unzip -a rclone-v1.55.1-osx-amd64.zip && cd rclone-*-osx-amd64
sudo mkdir -p /usr/local/bin
sudo mv rclone /usr/local/bin/
#/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
#brew uninstall osxfuse
#brew install macfuse
cd ..
sudo chmod -R 777 drive
rclone lsd remote:
cd Documents
rclone mount --daemon --allow-other --log-file /Users/runner/log.txt --log-level DEBUG remote: /Users/runner/Documents

#touch olalalalalalalalalala
ls -al
cd ..
ls -al
pwd
rclone lsd remote: -vv
echo echoooooooooooooooooooooooooooooooooooo
rclone lsf remote: -vv
tail -f /Users/runner/log.txt
ls -al /Users/runner/Documents
sudo umount /Users/runner/Documents
