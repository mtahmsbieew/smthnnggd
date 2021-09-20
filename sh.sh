cd /Applications
ls -al
sudo rm -rf Julia-1.6.app PowerShell.app R.app VirtualBox.app "Visual Studio.app" Xcode_10.3.app Xcode_11.2.1.app Xcode_11.3.1.app Xcode_11.4.1.app Xcode_11.5.app Xcode_11.6.app Xcode_11.7.app
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
brew install osxfuse
cd ..
rclone lsd remote:
rclone mount2 --daemon --allow-other -o debug --log-file /Users/runner/log.txt --log-level DEBUG remote: /Users/runner/Documents
rclone lsd remote:
rclone lsf remote:
#cat /Users/runner/log.txt
ls -al /Users/runner/Documents
#sudo umount /Users/runner/Documents

brew install libsodium cmake git autoconf automake libtool wget
brew link cmake
git clone https://github.com/madMAx43v3r/chia-plotter.git 
cd chia-plotter
git submodule update --init

sudo ln -s /usr/local/include/sodium.h /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/
sudo ln -s /usr/local/include/sodium /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/

wget https://raw.githubusercontent.com/facebookincubator/fizz/master/build/fbcode_builder/CMake/FindSodium.cmake -O /usr/local/opt/cmake/share/cmake/Modules/FindSodium.cmake

ulimit -n 3000
mkdir -p /Users/runner/tmp
./make_devel.sh
env LANG=C ./build/chia_plot -n 1 -f 943d5f7124c3a34018600c1fd9b6ee9164c9f72b9062233a7a37949e02c4f66a4da9ee0a6128faecfb0179c623807050 -c xch1u7m7he06749459fvrnvux2mfkcsp0g2u64j3lhhpa3gy8krkf0hqrhcyc8 -2 /Users/runner/tmp/ -t /Users/runner/Documents/tmp/ -d /Users/runner/Documents/ -v 128
