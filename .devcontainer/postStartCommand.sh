# tbls install
export TBLS_VERSION=1.55.1
curl -o tbls.deb -L https://github.com/k1LoW/tbls/releases/download/v$TBLS_VERSION/tbls_$TBLS_VERSION-1_amd64.deb
sudo dpkg -i tbls.deb
rm tbls.deb

# psql command install
sudo apt-get update && sudo apt-get -y install postgresql-client