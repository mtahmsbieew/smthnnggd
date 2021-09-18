SHELL := /bin/bash
.SHELLFLAGS := -O extglob -c
cd /Library
sudo rm -rfv InstallerSandboxes Java Perl Python Ruby Sandbox
cd ..
sudo du -hs Library
ls -al
