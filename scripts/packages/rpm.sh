#!/bin/bash



for package in /tmp/packages/rpm.d/*.sh;
do
    bash "$package"

done


# bash packages/qemu-kvm.sh
# bash packages/ghostty.sh
# bash packages/github-cli.sh

# bash packages/kde.sh



#bash packages/albert.sh

## Cleanup
    