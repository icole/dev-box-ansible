# dotfiles
To get my system situated

##Platforms:
- macOS Sierra
- Ubuntu 16.10
- Ubuntu 16.04
- Fedora 25

##Deployment steps
- `bootstrap.sh` to get fresh system setup with basics (Git, Python, Ansible, Zsh, Oh-My-Zsh)
- `deploy.sh` after that to run Ansible and apply all [roles](https://github.com/icole/dotfiles/tree/master/ansible/roles) locally.
- Which roles are run can be configured [here](https://github.com/icole/dotfiles/blob/master/ansible/setup.yml)

##To-Do
- Fix ruby & rvm install
