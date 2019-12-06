# solana
Everything Solana + Stake Capital 

# Documentation

Forum: https://forums.solana.com/

Docs: https://docs.solana.com/book/

# Tour de Sol

https://docs.solana.com/tour-de-sol/participation/steps-to-create-a-validator/install-the-solana-software

# Configuration

## Keys are saved in: 

```
solana-keygen new -o ~/validator-keypair.json`
Wrote new keypair to /home/ubuntu/validator-keypair.json
=====================================================================
Save this mnemonic phrase to recover your new keypair:
```
## Wallet config

```
ubuntu@ip-10-0-0-42:~$ solana get
Wallet Config: /home/ubuntu/.config/solana/cli/config.yml
* url: http://tds.solana.com:8899
* keypair: /home/ubuntu/validator-keypair.json
```

## How keys where generated

`$ solana-keygen new --no-passphrase --silent --outfile validator-keypair.json` 
Wrote new keypair to validator-keypair.json

`$ solana-keygen new --no-passphrase --silent --outfile validator-vote-keypair.json` 
Wrote new keypair to validator-vote-keypair.json

$ solana-keygen pubkey validator-keypair.json 
7CedTutHVnWHcRF6dbYoTgMHzzrtNnayTpqvWGiviALe

`$ solana-keygen pubkey validator-vote-keypair.json`
6j66Xo3ERzcspy6KZvruK67pryV582BddNRdtfDACUp4

