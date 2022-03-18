# Vault Story ID client hook
Rejects commits whose message lack a story id at the beginning. Format is ‘[Ss][0-9]+-your commit message’. For example 'S122343-my-awesome-commit'

# Installation
Clone this repo and place 'prepare-commit-message' in a directory called 'hooks' in a location of your choice. 
*nix users will need to make the prepare-commit-msg file executable. Then run

git config --global init.templatedir install-dir-parent

For example, if the file has been saved to c:/githooks/hooks the command will be 

git config --global init.templatedir c:/githooks

Any repos cloned after this will run the hook on commits.

For pre-cloned repos run the below in the project root directory

git config core.hooksPath c:/githooks/hooks