### nvm installation

brew install nvm
copy the text that results after the installation provided by brew into `.zshrc` file or `config.fish` file

### nvm commands
nvm --help // to get some help
nvm --version // to check version

nvm list or nvm ls // list of all available node version locally
nvm ls-remote // list of all available node version locally

nvm install --lts // to install latest long term version
nvm install 13.5.0 // to install specific version of node

nvm install 8.0.0                     // Install a specific version number
nvm use 8.0                           // Use the latest available 8.0.x release
nvm run 6.10.3 app.js                 // Run app.js using node 6.10.3
nvm exec 4.8.3 node app.js            // Run `node app.js` with the PATH pointing to node 4.8.3
nvm alias default 8.1.0               // Set default node version on a shell
nvm alias default node    // Always default to the latest available node version on a shell

