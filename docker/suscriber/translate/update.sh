#!/bin/bash
cd `dirname $0`

curl https://s3.amazonaws.com/alexa-static/top-1m.csv.zip -o top-1m.csv.zip
unzip top-1m.csv.zip
mv top-1m.csv alexa-top-1m.csv

function download(){
	tag=$1
	name=$2
	curl -sL https://raw.githubusercontent.com/firehol/blocklist-ipsets/master/${name}.ipset |grep -v '^#' |grep -v '/'|sed -e "s/$/\",\"${name}\"/g" -e 's/^/"/g' >> ${tag}.csv
}

echo > proxy.csv
echo > spam.csv
echo > c2.csv
echo > attacker.csv

download proxy socks_proxy_30d
download proxy proxyspy_30d
download proxy proxylists_30d
download proxy proxz_30d
download spam sblam
download spam iw_spamlist
download spam nixspam
download spam normshield_all_spam
download spam normshield_high_spam
download spam php_spammers_30d
download spam php_dictionary_30d
download spam php_harvesters_30d
download c2 bambenek_pykspa
download c2 et_botcc
download c2 xforce_bccs
download attacker blocklist_de_mail
download attacker cruzit_web_attacks
download attacker normshield_high_attack
