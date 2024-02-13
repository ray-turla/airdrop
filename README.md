# CRON job Solana Airdrop
The cron job below runs every 4 hours. By calculation, you get 4-5 airdrops a day therefore you get 20-25 test sol in a daily basis
# Crontab command 
```
crontab -e
```

then enter inside the editor
```
0 */4 * * * ~/scripts/airdrop.sh >> ~/scripts/airdrop.log 2>&1
```

then save your changes
