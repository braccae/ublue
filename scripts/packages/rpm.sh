#!/bin/bash



for package in $(ls packages/rpm.d); do
    bash packages/rpm.d/$package

done


# bash packages/qemu-kvm.sh
# bash packages/ghostty.sh
# bash packages/github-cli.sh

# bash packages/kde.sh



#bash packages/albert.sh

## Cleanup
    