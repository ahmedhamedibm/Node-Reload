mkdir -p ~/bin
cd ~/bin
curl -sSL https://raw.githubusercontent.com/ahmedhamedibm/Node-Reload/main/node_reload > node_reload
chmod +x node_reload || sudo chmod +x node_reload
cd ~
echo 'export PATH=$PATH":$HOME/bin"' >> ~/.bashrc || sudo echo 'export PATH=$PATH":$HOME/bin"' >> ~/.bashrc || echo 'export PATH=$PATH":$HOME/bin"' >> ~/.zshrc || sudo echo 'export PATH=$PATH":$HOME/bin"' >> ~/.zshrc
source ~/.bashrc || source ~/.zshrc

