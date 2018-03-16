# Achelous Repository

## Debian and Ubuntu

```sh
# add repository
echo "deb https://core-process.github.io/achelous-dist/deb $(lsb_release -s -c) main" | sudo tee /etc/apt/sources.list.d/achelous.list

sudo apt-key adv --keyserver hkp://keys.gnupg.net --recv C7192F40A7C34E5A25339476D1E482C66415ACC5

apt-get update

# install achelous
apt-get install achelous
```
