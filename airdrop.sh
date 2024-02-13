#!/bin/bash

# Path to the Solana CLI executable
SOLANA_CLI="/Users/rayturla/.local/share/solana/install/active_release/bin/solana"
DATE="/bin/date"
# List of recipient wallet addresses
RECIPIENT_ADDRESSES=(
    "FAXDZafhXmNBykiqSQtDmT3ZELDiRifzPtq9Yv4zEuvM"
    # "CFKvcW3ieXFzcm6t1zXFrpmtP2t9eQLU91b2KkBNTvxG"
    # "2juwZCaP1tQmABwSYMDdTSepwZYxGC2xpNS3oDr9nwy8"
    # Add more recipient addresses as needed
)

# Amount of SOL to airdrop to each recipient
AMOUNT_TO_AIRDROP="5"  # 5 SOL

# Loop through recipient addresses and perform the airdrop
for recipient_address in "${RECIPIENT_ADDRESSES[@]}"; do
    echo "Airdropping $AMOUNT_TO_AIRDROP SOL to $recipient_address"
    
    # Request Airdrop
    $SOLANA_CLI airdrop "$AMOUNT_TO_AIRDROP" "$recipient_address"
    
    if [ $? -eq 0 ]; then
        echo "Airdrop to $recipient_address was successful."
    else
        echo "Airdrop to $recipient_address failed."
    fi
done

dt=$(date +"%Y-%m-%d %H:%M:%S %z")

echo "Airdrop process completed."
echo "Timetamp: $dt"