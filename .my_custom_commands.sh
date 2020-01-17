#!/bin/bash

#command create + project name creates folder with project name init github repository

function create() {

  python Desktop/Python/test01/skiny/create.py $1
  cd Desktop/Python/$1
  
  git init
  git remote add origin git@github.com:{your_git_username}/$1.git
  touch README.md
  git add .
  git commit -m "Initial commit"
  git push -u origin master
  #open code editor with project
  code .
}