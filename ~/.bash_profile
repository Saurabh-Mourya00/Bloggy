# -------------------------------------------

export SECRET_KEY='5791628bb0b13ce0c676dfde280ba245'
export SQLALCHEMY_DATABASE_URI='sqlite:///site.db'

# Load dotfiles
for file in ~/.bash_prompt ~/.aliases ~/.private; do
    if [ -r "$file" ] && [ -f "$file" ]; then
        source "$file"
    fi
done
unset file

# Git auto-complete
if [ -f ~/.git-completion.bash ]; then
    source ~/.git-completion.bash
fi
