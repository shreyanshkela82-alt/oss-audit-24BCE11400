#!/bin/bash

echo "Enter package name:"
read pkg

check_dpkg=$(dpkg -l | grep -w $pkg)

if [ "$check_dpkg" != "" ]
then
    echo "Package '$pkg' is installed."

    version=$(dpkg -l | grep -w $pkg | awk '{print $3}')
    echo "Version: $version"
else
    check_rpm=$(rpm -qa | grep -w $pkg)

    if [ "$check_rpm" != "" ]
    then
        echo "Package '$pkg' is installed."

        version=$(rpm -qi $pkg | grep Version | awk '{print $3}')
        echo "Version: $version"
    else
        echo "Package '$pkg' is NOT installed."
        exit
    fi
fi

case $pkg in
    firefox)
        echo "A web browser used to access the internet."
        ;;
    vim)
        echo "A text editor used for editing files in terminal."
        ;;
    git)
        echo "A version control system used to track code changes."
        ;;
    gcc)
        echo "A compiler used to compile C programs."
        ;;
    python3)
        echo "A programming language used for scripting and development."
        ;;
    *)
        echo "No description available for this package."
        ;;
esac
