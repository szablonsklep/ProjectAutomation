#! /usr/bin/env python3

import sys
import os
from github import Github

path = "{#Insert your path}"

access_token = "{#Insert your token}"

def create():
    
    folder_name = str(sys.argv[1])
    #create folder with project
    os.makedirs(path + str(folder_name))
    #connect to git 
    g = Github(str(access_token)).get_user()
    #create repo (private is optional)
    repo = g.create_repo(folder_name, private=True)

    #print 
    print("Succesfully created repository {}".format(folder_name))


if __name__ == "__main__":
    create()