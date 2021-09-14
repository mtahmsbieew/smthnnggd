cd /Applications

mkdir -p /content
curl https://rclone.org/install.sh --http1.1 | bash -s beta
rclone config
