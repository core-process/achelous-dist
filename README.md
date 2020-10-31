# Achelous Repository

## Debian and Ubuntu

* **Architectures**
    * amd64, armhf
* **Codenames**
    * xenial, artful, bionic (Ubuntu)
    * jessie, stretch, buster (Debian)

```sh
# add repository
echo "deb [arch=amd64,armhf] https://coreprocess.github.io/achelous-dist/deb $(lsb_release -s -c) main" | sudo tee /etc/apt/sources.list.d/achelous.list

# add key of maintainer
sudo apt-key adv --keyserver hkp://keys.gnupg.net --recv C7192F40A7C34E5A25339476D1E482C66415ACC5

# update package index
sudo apt-get update

# install achelous
sudo apt-get install achelous
```
