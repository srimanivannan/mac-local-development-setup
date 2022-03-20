# To change a default shell in terminal

do spot light search `cmd + space` and pull `terminal` app

right click on the app in dock -> options -> keep it dock 

To see list of shells available in macos:

    cat /etc/shells

To see the current shell in terminal:

    echo $0

To change the shell use below command:

    chsh -s /bin/<shell>
    For example: chsh -s /bin/zsh