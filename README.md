# dev-box-ansible

## Deployment steps
- `bootstrap.sh` to get fresh system setup with basics (Git, Python, Ansible)
- `deploy.sh` after that to run Ansible and apply all [roles](https://github.com/icole/dotfiles/tree/master/ansible/roles) locally.
- Which roles are run can be configured [here](https://github.com/icole/dotfiles/blob/master/ansible/setup.yml)

## TODO
- [ ] Fix `ripgrep` and `fd` install on RHEL 9
- [ ] Only install bash-it when necessary
