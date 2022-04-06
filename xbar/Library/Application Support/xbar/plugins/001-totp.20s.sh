#!/bin/bash

# <xbar.title>Authenticator</xbar.title>
# <xbar.version>v0.2</xbar.version>
# <xbar.author>Gunasekaran Namachivayam, Oleksii Shurubura</xbar.author>
# <xbar.author.github>gunasekar</xbar.author.github>
# <xbar.desc>This plugin will generate the TOTP tokens and allows to copy them to clipboard</xbar.desc>
# <xbar.image>https://i.imgur.com/1AYh44b.png</xbar.image>

# Hack for language not being set properly and unicode support
export LANG="${LANG:-en_US.UTF-8}"

# update the key value pairs as per your requirement
# Key - for your reference to identify a TOTP Account
# Value - base32 secret key corresponding to the TOTP Account
totp_secrets=( "Zerodha:QTFCRPUL2K4LETRD27NGZXLPQB6AZJT7"
        "GitHub:BZZLU2HAFKKJAWZF"
        "Reddit:G5YFKTB6K4C6O3QJGNQC47HGCR5NHJXE"
        "Amazon Web Services:RXETVIPGNEN5S2SI3CZKHQF5XLDM6S5XVNEWPGNNVZ3WSD35NUR4JEL6SJLV6NMX"
        "Brave Rewards:EZC4F2G3KRP3VWNG"
        "HEY:XDXTZAQF7SC37KDFJR6Z4R5EHOJQRIYE"
        "Namecheap:2SMNA5CMF2VYXQNX6ZDXPAETURVPIPT2"
        "Firefox:JJKXIRDDOF4XO4DRJVWHU4KWNVSEQRBU"
        "Deel:KFVVU6BIJBET6M3PMJVTENLJOBVWEOTHMRAWQZKUMRKWW4BVMYXA"
        "Upwork:TZCYUKEBX6FOV5KD"
        "GoDaddy:TDZZ75MD4MQ2V2LB"
        "NPM:Z4YIX5S7CCBGH3ZO2R2YS5434ZFS34W5"
        "Unknown:I7ZROZKAVI5BOX5D"
        "Electronic Arts:FMWIC4E4DR7YCEO2"
        "Tumblr:IJJXN3EIIOOLQ73V" )

# oath-toolkit needs to be installed. Use 'brew install oath-toolkit'
# update the appropriate path of oathtool binary below
oathtool="/opt/homebrew/bin/oathtool"

function get-totp {
  $oathtool --totp -b "$1"
}

if [[ "$1" == "copy" ]]; then
  echo -n "$(echo -n "$2")" | pbcopy
  exit
fi

echo " | templateImage=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"
echo "---"

for secret in "${totp_secrets[@]}" ; do
    KEY="${secret%%:*}"
    VALUE="${secret##*:}"
    token=$( get-totp "$VALUE" )
    echo "$KEY | bash='$0' param1=copy param2='$token' terminal=false"
done
