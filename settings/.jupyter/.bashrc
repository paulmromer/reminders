
export BASH_SILENCE_DEPRECATION_WARNING=1

if [[ -f ~/reminders/bash_reminders.txt ]]
then
    cat ~/reminders/bash_reminders.txt
    echo ''
fi

CP=$(which python)
echo ""
echo "Shell: $0"
echo "Python: $CP"
echo ""

VIRTUAL_ENV="${PWD}/.venv"
export VIRTUAL_ENV

################## Change the Appearance of the Command Prompt  ########################

bldgrn='\e[1;32m' # Bold Green
txtrst='\e[0m'    # Text Reset

print_before_the_prompt () {
  printf "$bldgrn%s\n$txtrst" "$PWD"
}


PROMPT_COMMAND=print_before_the_prompt
PS1="{VIRTUAL_ENV_PROMPT}-> "


################################## Aliases ##############################################

alias la='ls -lahF'
alias dir='ls -lahF'

############################### Shell Options ##########################################

# shopt -s autocd 

#  dotglob cdspell checkhash

#    autocd:     automatically inserts cd when a directory path is entered 
#    cdspell:    for cd command, fix spelling mistakes in directory paths

#    Suggestion: Use 'cd ' explicitly if you want spell correction. 
#    If spell correction would be a nuisance, omit 'cd '.

#     dotglob:    include files with that start w  '.' when searching using patterns 
#     checkhash:  updates the command cache so bash finds all the commands on PATH


