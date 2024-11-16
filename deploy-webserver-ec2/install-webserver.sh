#### CLEAN ACTIONS
rm -rf ~/.npm ~/.nvm ~/webserver .bash_history .bashrc .wget-hsts

yum check-update
yum upgrade

yum install wget tar gzip -y

touch ~/.bashrc

wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
source ~/.bashrc

nvm install --lts

mkdir ~/webserver
cd ~/webserver
echo "ewogICJuYW1lIjogIndlYnNlcnZlciIsCiAgInZlcnNpb24iOiAiMS4wLjAiLAogICJtYWluIjog
ImluZGV4LmpzIiwKICAic2NyaXB0cyI6IHsKICAgICJ0ZXN0IjogImVjaG8gXCJFcnJvcjogbm8g
dGVzdCBzcGVjaWZpZWRcIiAmJiBleGl0IDEiCiAgfSwKICAiYXV0aG9yIjogIiIsCiAgImxpY2Vu
c2UiOiAiSVNDIiwKICAiZGVzY3JpcHRpb24iOiAiIgp9Cg==" | base64 --decode > package.json

echo "aTwhRE9DVFlQRSBodG1sPgo8aHRtbD4KPGJvZHk+CiAgPGgxPldlYnBhZ2UgMTwvaDE+CjwvYm9k
eT4KPC9odG1sPgo=" | base64 --decode > index.html

npm i http-server --save

npx http-server ~/webserver