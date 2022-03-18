# How to install oracle jdk in mac os

1. Check whether java is already installed or not. There are two ways you can verify it.
   1. goto systemPreferences-->and see java icon
   2. open up terminal and type ```java -version``` or ```javac -version```

2. Goto oracle official website and download the required jdk*.dmg file
3. Double click the jdk*.dmg file
4. click continue and finish the installation
5. Now you need create `$JAVA_HOME` variable
6. go to your home directory from terminal : `cd ~`
7. type `ls -lah`  ( just to see if you have `.bash_profile` and `.zshrc` on this location or not )
    
    if it is not there then create with command : `touch .bash_profile` or `touch .zshrc`
    
    if it is there then don't do anything
8. in terminal type where your .bash_profile file is there:  
   1. `open -e .bash_profile`
   2. `open -e .zshrc`
9. copy and paste the below line
        `export JAVA_HOME=$(/usr/libexec/java_home)`