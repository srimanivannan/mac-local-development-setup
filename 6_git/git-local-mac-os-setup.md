### Local masos git installation

1. by default macos shipped with git. it is usally via xcode installation.

### Authentication

#### Set up SSH Authentication


### commit Sign-in verification. There are 2 ways. GPG way or SSH way

#### Set up GPG way commit Sign-in verification

1. Download gpgtools from https://gpgtools.org/
2. double click dmg file and double click installer
3. Click "customize" option and unceck "mail" feature
4. click "install"
5. After installation you check the version in the terminal
   1. gpg2 --version or gpg --version
   2. Note: gpg2 and gpg are same version and both are installed with gpgtool installation. there were no gpg. It's bot installed and both are same
6. Now generate the key pair (public/private) using the below command
   1. gpg --full-generate-key
      1. Note: just follow the default option
      2. Note: Don't use password or passprase to generate keys. just click okay. it will ask you for no password option and say yes
   2. gpg --list-secret-keys --keyid-format=long
      1. example will be like below
        ```
        sec   rsa3072/284D37E38D269A40 2024-02-19 [SC]
      52B342EBB1BE2744C2859EDF284D37E38D269A40 uid                 [ultimate] srimanivannan_user_id (I provided this in terminal by running gpg --full-generate-key) <srimanivannan@gmail.com>
ssb   rsa3072/F86E9E2E825E2C23 2024-02-19 [E]```
        2. `284D37E38D269A40` is your key `F86E9E2E825E2C23` is your subkey
7. gpg --armor --export 284D37E38D269A40 | pbcopy
8. Go to github.com and left menu select "SSH and GPG keys" click "New GPG key" button
9. Enter your title example "srimanivannan_user_id" and paste your key in te key text box
10. git config --global --unset gpg.format
11. git config --global user.signingkey 284D37E38D269A40
12. git commit -S -m "test"
13. goto github repository and click commits link and you can see commit verified
14.  click te verified and you can see keyid 284D37E38D269A40 there

#### Set up SSH way commit Sign-in verification

1. ssh-keygen -t ed25519 -C "srimanivannan@gmail.com"
2. enter your filename full path. example "/Users/mani/.ssh/id_ed25519_github_commit_verify"
3. start ssh agent in background   `eval "$(ssh-agent -s)"`
4. type `code ~/.ssh/config` and add `IdentityFile ~/.ssh/id_ed25519_github_commit_verify`.
   1. if the file is not there then create new one.
   2. add below content 
    ```
    Host github.com
        AddKeysToAgent yes
        IdentityFile ~/.ssh/id_ed25519
        IdentityFile ~/.ssh/id_ed25519_github_commit_verify
    ```
5. add private key into `ssh-add ~/.ssh/id_ed25519_github_commit_verify`
6. copy public key `pbcopy < ~/.ssh/id_ed25519_github_commit_verify.pub`
7. Go to github.com --> settings --> left menu pick "SSH and GPG keys"
8. click "New SSH Key" button updtae title and paste the copied key from step6
9. git config --global gpg.format ssh
10. git config --global user.signingkey ~/.ssh/id_ed25519_github_commit_verify.pub
11. do sign using ssh
    ```
    mani@ms testssh % git add -A testfile.go 
mani@ms testssh % git commit -S -m "sign verification from ssh key"
[main 5469a6f] sign verification from ssh key
 1 file changed, 2 insertions(+), 1 deletion(-)
 ```
12. git push
