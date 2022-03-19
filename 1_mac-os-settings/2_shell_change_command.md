# To change a default shell in terminal

To see list of shells available in macos:

    cat /etc/shells

To see the current shell in terminal:

    echo $0

To change the shell use below command:

    chsh -s /bin/<shell>
    For example: chsh -s /bin/zsh