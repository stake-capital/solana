# Install binary
ubuntu@ip-10-0-0-42:~$ curl -sSf https://raw.githubusercontent.com/solana-labs/solana/v0.19.1/install/solana-install-init.sh | sh -s - 0.20.0

#looking for latest release
#downloading v0.20.0 installer
#Configuration: /home/ubuntu/.config/solana/install/config.yml
#Active release directory: /home/ubuntu/.local/share/solana/install/active_release
#* Release version: 0.20.0
#* Release URL: https://github.com/solana-labs/solana/releases/download/v0.20.0/solana-release-x86_64-unknown-linux-gnu.tar.bz2
#  Update successful
#Adding export PATH="/home/ubuntu/.local/share/solana/install/active_release/bin:$PATH" to /home/ubuntu/.profile
#Close and reopen your terminal to apply the PATH changes or run the following in your existing shell:

# Export 
export PATH="/home/ubuntu/.local/share/solana/install/active_release/bin:$PATH"
