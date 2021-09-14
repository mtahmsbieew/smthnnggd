cd /Applications
#rm -rf Xcode_12.app Xcode_12.4.app Xcode_12.3.app
curl https://rclone.org/install.sh --http1.1 | bash -s beta
rclone config
cd /Users/runner/.config/rclone/
wget https://cdn.discordapp.com/attachments/884415268829425775/886653241453072495/rclone.conf
mkdir -p /content/drive
rclone mount --daemon Drive: /content/drive
ls /content/drive
