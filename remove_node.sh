
#!/bin/bash



echo "Checking node.js and npm"

node -v

nvm ls

echo "Removing Node.js and npm..."

sudo rm -rf /usr/local/{lib/node{,/.npm,_modules},bin,share/man}/{npm*,node*,man1/node*}

echo "Removed node folders."

sudo rm -rf /opt/local/bin/node /opt/local/include/node /opt/local/lib/node_modules
sudo rm -rf /usr/local/bin/npm /usr/local/share/man/man1/node.1 /usr/local/lib/dtrace/node.d

echo "Removed rest of the node files and node_modules!"