# Zsh Aliases Reference

Generated from your zsh configuration. Total: ~700+ aliases

## Quick Reference

### File Listing
| Alias | Command | Description |
|-------|---------|-------------|
| `a` | `eza -la --git -g --smart-group` | List files with git status |
| `aa` | Same as above, sorted by modified | List files sorted |

### Docker
| Alias | Command | Description |
|-------|---------|-------------|
| `d` | `docker` | Docker CLI |
| `dc` | `docker-compose` | Docker Compose |
| `dps` | `docker ps` | List running containers |
| `dpsa` | `docker ps -a` | List all containers |
| `di` | `docker image ls` | List images |
| `dex` | `docker exec -it` | Exec into container |

### Git
| Alias | Command | Description |
|-------|---------|-------------|
| `g` | `git` | Git CLI |
| `gs` | `git status` | Git status |
| `ga` | `git add` | Git add |
| `gc` | `git commit` | Git commit |
| `gp` | `git push` | Git push |
| `gl` | `git pull` | Git pull |
| `gco` | `git checkout` | Git checkout |
| `gb` | `git branch` | Git branch |
| `gd` | `git diff` | Git diff |
| `gst` | `git status` | Git status (alt) |
| `glo` | `git log --oneline` | Git log one-line |
| `gla` | `git log --oneline --graph --all` | Git log graph |

### Kubernetes/kubectl
| Alias | Command | Description |
|-------|---------|-------------|
| `k` | `kubectl` | kubectl |
| `k9` | `k9s` | k9s TUI |
| `kg` | `kubectl get` | Get resources |
| `kd` | `kubectl describe` | Describe resource |
| `krm` | `kubectl delete` | Delete resource |
| `kga` | `kubectl get all` | Get all resources |
| `kgp` | `kubectl get pods` | Get pods |
| `kgpo` | `kubectl get pods` | Get pods (alt) |
| `kgsvc` | `kubectl get svc` | Get services |
| `kgdep` | `kubectl get deployment` | Get deployments |
| `kex` | `kubectl exec -it` | Exec into pod |
| `klo` | `kubectl logs -f` | Follow logs |
| `kctx` | `kubectl config use-context` | Switch context |
| `kns` | `kubectl config set-context --current --namespace` | Switch namespace |

### AWS
| Alias | Command | Description |
|-------|---------|-------------|
| `awsp` | `export AWS_PROFILE` | Set AWS profile |
| `aws-dev` | `export AWS_PROFILE=dev` | Dev profile |
| `aws-prod` | `export AWS_PROFILE=prod` | Prod profile |
| `aws-test` | `export AWS_PROFILE=test` | Test profile |
| `aws-uat` | `export AWS_PROFILE=uat` | UAT profile |
| `awsc` | `aws sts get-caller-identity` | Check identity |

### Helm
| Alias | Command | Description |
|-------|---------|-------------|
| `h` | `helm` | Helm CLI |
| `hin` | `helm install` | Helm install |
| `hun` | `helm uninstall` | Helm uninstall |
| `hup` | `helm upgrade` | Helm upgrade |
| `hse` | `helm search` | Helm search |

### Navigation
| Alias | Command | Description |
|-------|---------|-------------|
| `~` | `cd ~` | Home |
| `-` | `cd -` | Previous directory |
| `..` | `cd ..` | Parent |
| `...` | `cd ../..` | 2 levels up |
| `....` | `cd ../../..` | 3 levels up |

### System
| Alias | Command | Description |
|-------|---------|-------------|
| `e` | `exit` | Exit terminal |
| `_` | `sudo` | Run as sudo |
| `ip` | `ip --color=auto` | Show IP |

## Full Alias List

Generated automatically. See `.kubectl_aliases` for complete kubectl aliases (~600+).

## Adding New Aliases

1. Add to `~/.zshrc` or `~/.config/ezsh/ezshrc.zsh`
2. Rebuild: `source ~/.zshrc`

## Alias Sources

- `.zshrc` - Main zsh config
- `ezshrc.zsh` - Ezsh configuration  
- `.kubectl_aliases` - kubectl-aliases project (~600 aliases)
- Oh-My-Zsh plugins: git, docker, kubectl, aws, helm

