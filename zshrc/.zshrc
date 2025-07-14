# ~/.zshrc (in ~/Dotfiles/zshrc/.zshrc)

# 1. Initialize Starship prompt
eval "$(starship init zsh)"

# 2. Git shortcuts
alias gc="git commit -m"
alias gca="git commit -a -m"
alias gp="git push origin HEAD"
alias gpu="git pull origin"
alias gst="git status"
alias glog="git log --graph --topo-order \
  --pretty='%w(100,0,6)%C(yellow)%h%C(bold)%d\
%Creset %s %C(dim white)- %an, %cr'"
alias gdiff="git diff"
alias gco="git checkout"
alias gb="git branch"
alias gba="git branch -a"
alias gadd="git add"
alias ga="git add -p"
alias gcoall="git checkout -- ."
alias gr="git remote"
alias gre="git reset"

# 2.5. more shortcuts
alias repos="cd ~/Documents/repos"
alias dotfiles="cd ~/Dotfiles"
alias home="clear && cd ~ && neofetch"



# 3. Directory shorthands
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

# 4. System info on startup
if command -v neofetch >/dev/null 2>&1; then
  neofetch
fi

# 5. (Optional) Any other exports, PATH tweaks, plugins, etc.
# export PATH="$HOME/bin:$PATH"
