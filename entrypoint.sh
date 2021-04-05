#!/bin/bash

if [ ! -z ${WALLET_ADDRESS} ] &&  [ ! -z ${POOL_ADDRESS} ] ; then 
echo "Start mining"
	system -a yespowerSUGAR -o $POOL_ADDRESS -u $WALLET_ADDRESS
else echo "${WALLET_ADDRESS} and ${POOL_ADDRESS}";
fi
