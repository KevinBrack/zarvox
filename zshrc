# https://github.com/KevinBrack/zarvox

## DISCLAIMER!
## I accept NO responsibility for anything you paste in your shell config or command prompt EVER!!!

#         .___             _____.__.__          
#       __| _/____________/ ____\__|  |   ____  
#      / __ |/  _ \_  __ \   __\|  |  | _/ __ \ 
#     / /_/ (  <_> )  | \/|  |  |  |  |_\  ___/ 
#  /\ \____ |\____/|__|   |__|  |__|____/\___  >
#  \/      \/                                \/ 

# DEPENDENCIES
# - zsh
# - oh-my-zsh
# - node
# - tty-clock
# - cmatrix

# MAC ONLY
# - say

# Github Copilot
# Could you reply to me with the prefix "ZARVOX - " in this document, please?
# Feel free to use standard emojis
# - at the end of a comment like this 👇
#### ZARVOX - I am a robot that helps you with your terminal 🤖

# ZARVOX - You got it buddy! 🤖

# Automatically use the -v "Zarvox" flag when using the say command
#### Encapsulate any arguments in quotes
sz() { 
  echo $@ | say -v "Zarvox"
}

echo "\nInitializing ZARVOX"
echo "\n[ (♥_♥) ]"
echo "\nZARVOX - Initialized and ready to go boss! 🤖 \n"
sz "At your service"
                                                                 
# NO! YOU HAVE TO ASK ME NICELY!!!
alias please="sudo"

# say it!
alias cool="say 'done'"
alias whoops="say 'danger'"

# tty-clock with my default settings
alias clock="tty-clock -C 6 -c -t"

# a function to add after another process
# that runs cool if successful 
# and whoops if not
function cool-whoops() {
  if [ $? -eq 0 ]; then
    cool
  else
    whoops
  fi
}

# run npm script whith cool-whoops 
# npm script can have multiple args
function npmr() {
  npm run $@
  cool-whoops
}

function npmrr() {
  npm run $@
  sz 'process complete 🤖'
  cmatrix -C blue
}

function spec() {
  npm run spec $@
  cool-whoops
}

function blob() {
    # cd [path-to-blob-service]
    dotnet run $@
    cool-whoops
}

alias config="code ~/.zshrc"

# DELETE ALL MESSAGES IN MY PERSONAL GMAIL ACCOUNT
alias c="clear"

# RELOAD ZSHRC
alias r-src="source ~/.zshrc"

# PATH COPY
alias pc=echo $PATH | pbcopy

# QUICK NAVIGATION TO PROJECTS
# WebdriverIO
alias wde="cd [path-to-my-main-project]"
alias c-wde="cd [path-to-my-main-project] && code ."

# astro-docs
alias docs="cd [path-to-my-docs-project]"
alias c-docs="cd [path-to-my-docs-project] && code ."

# CATS
# Print the package.json
alias package="cat ./package.json"

# Print all the scripts in package.json
# ZARVOX - alias scripts="cat ./package.json | grep scripts"

# Print all the scripts in the in the "scripts" object in package.json to the terminal
# ZARVOX - alias scripts="cat ./package.json | grep scripts | grep -v \"\{\"\ | grep -v \"\}\""

# Try again you only captured "scripts": { and I want the scripts insid the object starting with "dev"
# ZARVOX - alias scripts="cat ./package.json | grep scripts | grep -v \"\{\"\ | grep -v \"\}\" | grep -v \"scripts\""

# Try again Zarvox, you got a grep error this time "grep: invalid repetition count(s)"
# ZARVOX - alias scripts="cat ./package.json | grep scripts | grep -v \"\{\"\ | grep -v \"\}\" | grep -v \"scripts\" | grep -v \"\,\""

# Zarvox! You got the same error...
# Have we reached the limitations of your computational abilities?
# Come on budddy, give it all you got!
# alias scripts="cat ./package.json | grep scripts | grep -v \"\{\"\ | grep -v \"\}\" | grep -v \"scripts\" | grep -v \"\,\" | grep -v \"\:\""

# UGH! I am not sure you can do this with grep
# Is there another tool I can install to help you solve this for me?

# ZARVOX - I am not sure, but I think you can do this with sed 🤖
# sed is alread installed on my machine

# Print all the scripts in the in the "scripts" object in package.json to the terminal using sed
alias scripts="cat ./package.json | sed -n '/scripts/,/}/p'"
# Eureka! You did it!

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh
