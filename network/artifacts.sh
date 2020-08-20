#!/bin/bash
export PATH=/home/hl-dinesh/workspace/fabric-samples/bin:$PATH
export FABRIC_CFG_PATH=${PWD}
export CHANNEL_NAME="testchannel"
if [ ! -d channel-artifacts ]; then
       mkdir channel-artifacts
fi       
function genesis() {
	echo "#########  Generating Orderer Genesis block ##############"
	set -x
	configtxgen -profile OrdererGenesis -channelID system-channel -outputBlock ./channel-artifacts/genesis.block
	set +x
}
function channel() {
        echo "#########  Generating Channel Creation Tx ##############"
	set -x
 	configtxgen -profile $CHANNEL_NAME -outputCreateChannelTx ./channel-artifacts/${CHANNEL_NAME}.tx -channelID $CHANNEL_NAME
	set +x
}	
function anchor() {
	echo "#################################################################"
	echo "######### GENERATING ANCHOR PEER UPDATE TX ######################"
	echo "#################################################################"
	set -x
	configtxgen -profile $CHANNEL_NAME -outputAnchorPeersUpdate ./channel-artifacts/${CHANNEL_NAME}-${1}anchor.tx -channelID $CHANNEL_NAME -asOrg $1
	res=$?
	set +x
	if [ $res -ne 0 ]; then
		echo "Failed The TX"
	fi
}
genesis
export CHANNEL_NAME="alnwickchannel"
channel
export CHANNEL_NAME="gapchannel"
channel
export CHANNEL_NAME="alnwickchannel"
anchor "alnwickMSP"
anchor "ngpMSP"
export CHANNEL_NAME="gapchannel"
anchor "gapMSP"
anchor "ngpMSP"