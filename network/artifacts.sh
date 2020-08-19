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

genesis
export CHANNEL_NAME="AlnWickChannel"
channel
export CHANNEL_NAME="GAPChannel"
channel
