# Crontab command 
```
crontab -e
```

then enter inside the editor
```
0 */4 * * * ~/scripts/airdrop.sh >> ~/scripts/airdrop.log 2>&1
```

then save your changes
