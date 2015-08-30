# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH"

# vi command line navigation
set -o vi

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Load the shell dotfiles, and then some:
for file in ~/.{bash_prompt,exports,aliases,functions,bash.local}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Enable tab completion for `g` by marking it as an alias for `git`
if type __git_complete &> /dev/null; then
    __git_complete g __git_main
fi;
