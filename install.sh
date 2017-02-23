#!/bin/bash
# Use only if you need to perform changes on the user system such as installing software
if [ "$platform" = "linux" ]; then
    if [ "$jv_os_name" == "raspbian" ]; then
        sudo apt-get install -y jq
    elif [ "$jv_os_name" == "ubuntu" ]; then
        sudo apt-get install -y jq
    elif [ "$jv_os_name" == "fedora" ]; then
        sudo dnf install -y jq
    elif [ "$jv_os_name" == "openSUSE" ]; then
        sudo zypper install -y jq
    fi
elif [ "$platform" = "osx" ]; then
    brew install -y jq
elif [ "$platform" = "windows" ]; then
        dialog_msg <<EOM
Windows is not available with a direct installation
Please look: https://stedolan.github.io/jq/download/
EOM
fi

if [ "$sb_supported_os" == false ]; then
git clone https://github.com/stedolan/jq.git
cd jq
autoreconf -i
./configure --disable-maintainer-mode
make
sudo make install
    dialog_msg <<EOM
Auto-compilation of JQ library done.
If something wrong, please have a look on Google about the installation of JQ for your OS.
You can start to look this link: https://stedolan.github.io/jq/download/
EOM
    exit 1
fi