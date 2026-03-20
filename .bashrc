source ~/dotfiles/.git-completion.bash
source ~/dotfiles/git_config.sh
source ~/dotfiles/kubectl_config.sh
source ~/dotfiles/nvm_config.sh
source ~/dotfiles/rails_config.sh

if [ -f ~/dotfiles/local_aliases.sh ]; then
    . ~/dotfiles/local_aliases.sh
fi

function ssh-up {
  echo 'Starting ssh-agent, if not already running'
  if [ -z $SSH_AGENT_PID ]; then
      eval "$(ssh-agent -s)"
      ssh-add ~/.ssh/id_ecdsa
  fi
}
