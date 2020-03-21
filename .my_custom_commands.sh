#!/bin/bash

#command create + project name creates folder with project name init github repository

function create() {

  python3 {path to your python file} $1

  #check if folder was created
  if [[ -d {project_folder} ]]
  then
    cd Desktop/Python/$1

    #initialize git repo
    git init
    git remote add origin git@github.com:{your_git_username}/$1.git
    touch README.md
    git add .
    git commit -m "Initial commit"
    git push -u origin master
    #open code editor (visual studio) with project
    code .
  else
    echo "Your $1 folder does not exist"
  fi
}