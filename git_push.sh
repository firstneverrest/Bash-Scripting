#! /usr/bin/bash
read -p "Your commit message: " MESSAGE 
cd "D:\\full stack developer\\project\\learning\bash"
git add git_push.sh README.md
git commit -m "$MESSAGE"
git push -u origin main
echo "git push completed"