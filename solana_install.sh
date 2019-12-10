# Install binary
`curl -sSf https://raw.githubusercontent.com/solana-labs/solana/v0.21.2/install/solana-install-init.sh | sh -s - 0.21.2`

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

# Add sysntemd
echo "[Unit]
Description=Solana Validator
After=network.target
StartLimitIntervalSec=0

[Service]
Type=simple
Restart=always
RestartSec=1
User=ubuntu
LimitNOFILE=65536
Environment=ENTRYPOINT=34.83.130.52
Environment=A5rdZnMcZLZRPsvmPf55uKM8AtCs57r7ZV64HKAk78re
ExecStart=/home/ubuntu/.local/share/solana/install/active_release/bin/solana-validator   --dynamic-port-range 8001-8010   --entrypoint 34.83.130.52:8001   --gossip-port 8001   --identity-keypair /home/ubuntu/validator-keypair.json   --ledger /home/ubuntu/validator-ledger   --limit-ledger-size   --log -   --voting-keypair /home/ubuntu/validator-vote-keypair.json   --expected-genesis-hash A5rdZnMcZLZRPsvmPf55uKM8AtCs57r7ZV64HKAk78re
[Install]
WantedBy=multi-user.target" > solana.service

sudo mv solana.service /etc/systemd/system/
sudo systemctl enable solana.service

sudo systemctl enable solana.service
sudo systemctl start solana
sudo journalctl -u solana -f



