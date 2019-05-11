## Chris Mansfield's dev environment stuff

This repo contains submodules, clone with `--recurse-submodules`

Update using `git submodule update`

### Applications to install

* Powershell Core
* Git
* Node
* Hyper
* Yarn

### Powerline fonts

Powerline fonts are included as a submodule in `submodules/powerline-fonts`

On bash, run `install.sh`, on PowerShell run `install.ps1`

### Windows

Run the `Install.ps1` script. Use the -Global flag if the home drive is configured to be on a netwrok drive (common on corporate windows machines).

The `Install.ps1` script can be run multiple times, whenever updating the repo contents.

