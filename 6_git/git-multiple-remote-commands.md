git clone <<url>> -o mani // clone with remotename

git remote rename <old> <new> // rename the remote

git remote -vv // show all remote url 

git remote add <DEVELOPER_NMAE> <remote url> // to add new remote 

git fetch -va --all  // fetch all remote 

git branch -vv // show branch with remote info 

git status -sb // show staus with remote info 

git remote show <remotename> // to show branches 

git remote -v show <remotename> // to show branches 

git pull origin dev // to pull latest 

git checkout --track <remote>/<branch> // to checkout branch 

git switch -c <branchname> <remote>/<branch> // to checkout branch plus just you can set your name 

git branch <branch_name> --set-upstream-to <remote>/<branch> // to change your remote on a local branch 

git checkout -B <branch_name> <remote>/<branch> // to change your remote on a local branch but overwrites everything 


git branch --sort=-committerdate // local branches sort by created date


git branch -a | rg 'upgraded-health-check-with-mdes-status' // to search


git branch -D R27.i1-e110099-KPI-Poly //to delete

//git clone with specific branch


git clone --single-branch -b <branchname> <url>
