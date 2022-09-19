mkdir -p ~/bin
cd ~/bin
curl -sSL https://raw.github.ibm.com/National-Northeast-1/Node-Reloader/main/node_reload?token=AACTOHOCSZGBAQ64LLK3LGLDGHJUW > node_reload
chmod +x node_reload || sudo chmod +x node_reload
cd ~
echo 'export PATH=$PATH":$HOME/bin"' >> ~/.bashrc || sudo echo 'export PATH=$PATH":$HOME/bin"' >> ~/.bashrc || echo 'export PATH=$PATH":$HOME/bin"' >> ~/.zshrc || sudo echo 'export PATH=$PATH":$HOME/bin"' >> ~/.zshrc
source ~/.bashrc || source ~/.zshrc

