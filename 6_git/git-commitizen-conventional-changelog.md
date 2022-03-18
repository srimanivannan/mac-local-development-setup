Commit format required is conventional changelog. You may want to install commitizen and use it to commit:

Step1:

npm install commitizen @digitalroute/cz-conventional-changelog-for-jira
npm install -g commitizen

Step2:
commitizen init cz-conventional-changelog --save

you need to add  commitizen modules in the package.json file. you need this regardless of any project including spring boot

Step3:
git cz

