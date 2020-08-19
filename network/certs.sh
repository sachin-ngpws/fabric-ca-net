#!/bin/bash

if [ ! -d certs ]; then
	# mkdir -p certs/admin/tls-ca/
	mkdir -p certs/peerngp/
  mkdir -p certs/peeraln/
  mkdir -p certs/peergap/
	mkdir -p certs/ordererorg/
	mkdir -p certs/peerngp/admin
  mkdir -p certs/peeraln/admin
  mkdir -p certs/peergap/admin
	mkdir -p certs/peerngp/peer
  mkdir -p certs/peeraln/peer
  mkdir -p certs/peergap/peer
	mkdir -p certs/peerngp/client
  mkdir -p certs/peeraln/client
  mkdir -p certs/peergap/client
	mkdir -p certs/ordererorg/orderer
fi

# export FABRIC_CA_CLIENT_TLS_CERTFILES=$PWD/ca/tls-ca/ca-cert.pem
# export FABRIC_CA_CLIENT_HOME=$PWD/certs/admin/tls-ca/
# set -x
# fabric-ca-client enroll -d -u https://admin:adminpw@0.0.0.0:7054
# fabric-ca-client register -d --id.name peer-org --id.secret peerpw --id.type peer -u https://0.0.0.0:7054
# fabric-ca-client register -d --id.name admin-org --id.secret adminpw --id.type admin -u https://0.0.0.0:7054
# fabric-ca-client register -d --id.name user-org --id.secret clientpw --id.type client -u https://0.0.0.0:7054
# fabric-ca-client register -d --id.name orderer --id.secret ordererpw --id.type orderer -u https://0.0.0.0:7054
# set +x

# echo '#tls 
# NodeOUs:
#   Enable: true
#   ClientOUIdentifier:
#     Certificate: cacerts/0-0-0-0-7054.pem
#     OrganizationalUnitIdentifier: client
#   PeerOUIdentifier:
#     Certificate: cacerts/0-0-0-0-7054.pem
#     OrganizationalUnitIdentifier: peer
#   AdminOUIdentifier:
#     Certificate: cacerts/0-0-0-0-7054.pem
#     OrganizationalUnitIdentifier: admin
#   OrdererOUIdentifier:
#     Certificate: cacerts/0-0-0-0-7054.pem
#     OrganizationalUnitIdentifier: orderer'> $FABRIC_CA_CLIENT_HOME/msp/config.yaml

export FABRIC_CA_CLIENT_TLS_CERTFILES=$PWD/ca/ngp-ca/ca-cert.pem
export FABRIC_CA_CLIENT_HOME=$PWD/certs/peerngp/
set -x
fabric-ca-client enroll -d -u http://admin:adminpw@0.0.0.0:7054
fabric-ca-client register -d --id.name peer-ngp --id.secret peerpw --id.type peer -u http://0.0.0.0:7054
fabric-ca-client register -d --id.name admin-ngp --id.secret adminpw --id.type admin -u http://0.0.0.0:7054
fabric-ca-client register -d --id.name user-ngp --id.secret clientpw --id.type client -u http://0.0.0.0:7054
set +x

echo '#peer-ngp
NodeOUs:
  Enable: true
  ClientOUIdentifier:
    Certificate: cacerts/0-0-0-0-7054.pem
    OrganizationalUnitIdentifier: client  
  PeerOUIdentifier:
    Certificate: cacerts/0-0-0-0-7054.pem
    OrganizationalUnitIdentifier: peer
  AdminOUIdentifier:
    Certificate: cacerts/0-0-0-0-7054.pem
    OrganizationalUnitIdentifier: admin
  OrdererOUIdentifier:
    Certificate: cacerts/0-0-0-0-7054.pem
    OrganizationalUnitIdentifier: orderer' >  $FABRIC_CA_CLIENT_HOME/msp/config.yaml

export FABRIC_CA_CLIENT_TLS_CERTFILES=$PWD/ca/aln-ca/ca-cert.pem
export FABRIC_CA_CLIENT_HOME=$PWD/certs/peeraln/
set -x
fabric-ca-client enroll -d -u http://admin:adminpw@0.0.0.0:7055
fabric-ca-client register -d --id.name peer-aln --id.secret peerpw --id.type peer -u http://0.0.0.0:7055
fabric-ca-client register -d --id.name admin-aln --id.secret adminpw --id.type admin -u http://0.0.0.0:7055
fabric-ca-client register -d --id.name user-aln --id.secret clientpw --id.type client -u http://0.0.0.0:7055
set +x

echo '#peer-aln
NodeOUs:
  Enable: true
  ClientOUIdentifier:
    Certificate: cacerts/0-0-0-0-7055.pem
    OrganizationalUnitIdentifier: client  
  PeerOUIdentifier:
    Certificate: cacerts/0-0-0-0-7055.pem
    OrganizationalUnitIdentifier: peer
  AdminOUIdentifier:
    Certificate: cacerts/0-0-0-0-7055.pem
    OrganizationalUnitIdentifier: admin
  OrdererOUIdentifier:
    Certificate: cacerts/0-0-0-0-7055.pem
    OrganizationalUnitIdentifier: orderer' >  $FABRIC_CA_CLIENT_HOME/msp/config.yaml

export FABRIC_CA_CLIENT_TLS_CERTFILES=$PWD/ca/gap-ca/ca-cert.pem
export FABRIC_CA_CLIENT_HOME=$PWD/certs/peergap/
set -x
fabric-ca-client enroll -d -u http://admin:adminpw@0.0.0.0:7056
fabric-ca-client register -d --id.name peer-gap --id.secret peerpw --id.type peer -u http://0.0.0.0:7056
fabric-ca-client register -d --id.name admin-gap --id.secret adminpw --id.type admin -u http://0.0.0.0:7056
fabric-ca-client register -d --id.name user-gap --id.secret clientpw --id.type client -u http://0.0.0.0:7056
set +x

echo '#peer-gap
NodeOUs:
  Enable: true
  ClientOUIdentifier:
    Certificate: cacerts/0-0-0-0-7056.pem
    OrganizationalUnitIdentifier: client  
  PeerOUIdentifier:
    Certificate: cacerts/0-0-0-0-7056.pem
    OrganizationalUnitIdentifier: peer
  AdminOUIdentifier:
    Certificate: cacerts/0-0-0-0-7056.pem
    OrganizationalUnitIdentifier: admin
  OrdererOUIdentifier:
    Certificate: cacerts/0-0-0-0-7056.pem
    OrganizationalUnitIdentifier: orderer' >  $FABRIC_CA_CLIENT_HOME/msp/config.yaml

export FABRIC_CA_CLIENT_TLS_CERTFILES=$PWD/ca/ord-ca/ca-cert.pem
export FABRIC_CA_CLIENT_HOME=$PWD/certs/ordererorg/
set -x
fabric-ca-client enroll -d -u http://admin:adminpw@0.0.0.0:7057
fabric-ca-client register -d --id.name orderer --id.secret ordererpw --id.type orderer -u http://0.0.0.0:7057
set +x

echo '#orderer 
NodeOUs:
  Enable: true
  ClientOUIdentifier:
    Certificate: cacerts/0-0-0-0-7057.pem
    OrganizationalUnitIdentifier: client
  PeerOUIdentifier:
    Certificate: cacerts/0-0-0-0-7057.pem
    OrganizationalUnitIdentifier: peer
  AdminOUIdentifier:
    Certificate: cacerts/0-0-0-0-7057.pem
    OrganizationalUnitIdentifier: admin
  OrdererOUIdentifier:
    Certificate: cacerts/0-0-0-0-7057.pem
    OrganizationalUnitIdentifier: orderer' > $FABRIC_CA_CLIENT_HOME/msp/config.yaml

echo "####### ENROLLING ORDERER #########"

export FABRIC_CA_CLIENT_HOME=$PWD/certs/ordererorg/orderer
set -x
fabric-ca-client enroll -d -u http://orderer:ordererpw@0.0.0.0:7057
set +x

export FABRIC_CA_CLIENT_MSPDIR=msp
echo "moving the config file"
cp $PWD/certs/ordererorg/msp/config.yaml $FABRIC_CA_CLIENT_HOME/msp/config.yaml

# echo "changing the root ca"
# export FABRIC_CA_CLIENT_TLS_CERTFILES=$PWD/ca/tls-ca/ca-cert.pem

# export FABRIC_CA_CLIENT_MSPDIR=tls
# set -x
# fabric-ca-client enroll -d -u https://orderer:ordererpw@0.0.0.0:7054 --enrollment.profile tls --csr.hosts orderer --csr.hosts localhost
# set +x

# cp  $FABRIC_CA_CLIENT_HOME/tls/tlscacerts/* $FABRIC_CA_CLIENT_HOME/tls/ca.crt
# cp  $FABRIC_CA_CLIENT_HOME/tls/signcerts/* $FABRIC_CA_CLIENT_HOME/tls/server.crt
# cp  $FABRIC_CA_CLIENT_HOME/tls/keystore/* $FABRIC_CA_CLIENT_HOME/tls/server.key

# echo "editing the ord-ca admin tlscerts "

# mkdir $PWD/certs/ordererorg/msp/tlscacerts
# cp $FABRIC_CA_CLIENT_HOME/tls/ca.crt $PWD/certs/ordererorg/msp/tlscacerts/ca.cert

# echo "editing the orderer root tlsca directory"

# mkdir $PWD/certs/ordererorg/tlsca
# cp $FABRIC_CA_CLIENT_HOME/tls/ca.crt $PWD/certs/ordererorg/tlsca/tls-ca.crt

echo "editing root ca directory"

mkdir $PWD/certs/ordererorg/ca
cp $FABRIC_CA_CLIENT_HOME/msp/cacerts/* $PWD/certs/ordererorg/ca/orderer-ca.cert

echo "####### ENROLLING PEER NGP #########"

# export FABRIC_CA_CLIENT_TLS_CERTFILES=$PWD/ca/org-ca/ca-cert.pem
export FABRIC_CA_CLIENT_HOME=$PWD/certs/peerngp/peer
export FABRIC_CA_CLIENT_MSPDIR=msp
set -x
fabric-ca-client enroll -d -u http://peer-ngp:peerpw@0.0.0.0:7054
set +x

echo "moving the config file"
cp $PWD/certs/peerngp/msp/config.yaml $FABRIC_CA_CLIENT_HOME/msp/config.yaml

# echo "changing the root ca"
# export FABRIC_CA_CLIENT_TLS_CERTFILES=$PWD/ca/tls-ca/ca-cert.pem

# export FABRIC_CA_CLIENT_MSPDIR=tls
# set -x
# fabric-ca-client enroll -d -u https://peer-org:peerpw@0.0.0.0:7054 --enrollment.profile tls --csr.hosts peer-org --csr.hosts localhost
# set +x

# cp  $FABRIC_CA_CLIENT_HOME/tls/tlscacerts/* $FABRIC_CA_CLIENT_HOME/tls/ca.crt
# cp  $FABRIC_CA_CLIENT_HOME/tls/signcerts/* $FABRIC_CA_CLIENT_HOME/tls/server.crt
# cp  $FABRIC_CA_CLIENT_HOME/tls/keystore/* $FABRIC_CA_CLIENT_HOME/tls/server.key

# echo "editing the ord-ca admin tlscerts "

# mkdir $PWD/certs/peerorg/msp/tlscacerts
# cp $FABRIC_CA_CLIENT_HOME/tls/ca.crt $PWD/certs/peerorg/msp/tlscacerts/ca.cert

# echo "editing the orderer root tlsca directory"

# mkdir $PWD/certs/peerorg/tlsca
# cp $FABRIC_CA_CLIENT_HOME/tls/ca.crt $PWD/certs/peerorg/tlsca/tls-ca.crt

echo "editing root ca directory"
mkdir $PWD/certs/peerngp/ca
cp $FABRIC_CA_CLIENT_HOME/msp/cacerts/* $PWD/certs/peerngp/ca/peerngp-ca.cert

echo "####### ENROLLING PEER-NGP ADMIN #########"

export FABRIC_CA_CLIENT_TLS_CERTFILES=$PWD/ca/ngp-ca/ca-cert.pem
export FABRIC_CA_CLIENT_HOME=$PWD/certs/peerngp/admin
export FABRIC_CA_CLIENT_MSPDIR=msp
set -x
fabric-ca-client enroll -d -u http://admin-ngp:adminpw@0.0.0.0:7054
set +x

echo "moving the config file"
cp $PWD/certs/peerngp/msp/config.yaml $FABRIC_CA_CLIENT_HOME/msp/config.yaml

# echo "changing the root ca"
# export FABRIC_CA_CLIENT_TLS_CERTFILES=$PWD/ca/tls-ca/ca-cert.pem

# export FABRIC_CA_CLIENT_MSPDIR=tls
# set -x
# fabric-ca-client enroll -d -u https://admin-org:adminpw@0.0.0.0:7054 --enrollment.profile tls --csr.hosts admin-org --csr.hosts localhost
# set +x

# cp  $FABRIC_CA_CLIENT_HOME/tls/tlscacerts/* $FABRIC_CA_CLIENT_HOME/tls/ca.crt
# cp  $FABRIC_CA_CLIENT_HOME/tls/signcerts/* $FABRIC_CA_CLIENT_HOME/tls/server.crt
# cp  $FABRIC_CA_CLIENT_HOME/tls/keystore/* $FABRIC_CA_CLIENT_HOME/tls/server.key

echo "####### ENROLLING PEER-NGP CLIENT #########"

export FABRIC_CA_CLIENT_TLS_CERTFILES=$PWD/ca/ngp-ca/ca-cert.pem
export FABRIC_CA_CLIENT_HOME=$PWD/certs/peerngp/client
export FABRIC_CA_CLIENT_MSPDIR=msp
set -x
fabric-ca-client enroll -d -u http://user-ngp:clientpw@0.0.0.0:7054
set +x

echo "moving the config file"
cp $PWD/certs/peerngp/msp/config.yaml $FABRIC_CA_CLIENT_HOME/msp/config.yaml

# echo "changing the root ca"
# export FABRIC_CA_CLIENT_TLS_CERTFILES=$PWD/ca/tls-ca/ca-cert.pem

# export FABRIC_CA_CLIENT_MSPDIR=tls
# set -x
# fabric-ca-client enroll -d -u https://user-org:clientpw@0.0.0.0:7054 --enrollment.profile tls --csr.hosts client-org --csr.hosts localhost
# set +x

# cp  $FABRIC_CA_CLIENT_HOME/tls/tlscacerts/* $FABRIC_CA_CLIENT_HOME/tls/ca.crt
# cp  $FABRIC_CA_CLIENT_HOME/tls/signcerts/* $FABRIC_CA_CLIENT_HOME/tls/server.crt
# cp  $FABRIC_CA_CLIENT_HOME/tls/keystore/* $FABRIC_CA_CLIENT_HOME/tls/server.key



echo "####### ENROLLING PEER Aln #########"

export FABRIC_CA_CLIENT_TLS_CERTFILES=$PWD/ca/aln-ca/ca-cert.pem
export FABRIC_CA_CLIENT_HOME=$PWD/certs/peeraln/peer
export FABRIC_CA_CLIENT_MSPDIR=msp
set -x
fabric-ca-client enroll -d -u http://peer-aln:peerpw@0.0.0.0:7055
set +x

echo "moving the config file"
cp $PWD/certs/peeraln/msp/config.yaml $FABRIC_CA_CLIENT_HOME/msp/config.yaml

# echo "changing the root ca"
# export FABRIC_CA_CLIENT_TLS_CERTFILES=$PWD/ca/tls-ca/ca-cert.pem

# export FABRIC_CA_CLIENT_MSPDIR=tls
# set -x
# fabric-ca-client enroll -d -u https://peer-aln:peerpw@0.0.0.0:7054 --enrollment.profile tls --csr.hosts peer-org --csr.hosts localhost
# set +x

# cp  $FABRIC_CA_CLIENT_HOME/tls/tlscacerts/* $FABRIC_CA_CLIENT_HOME/tls/ca.crt
# cp  $FABRIC_CA_CLIENT_HOME/tls/signcerts/* $FABRIC_CA_CLIENT_HOME/tls/server.crt
# cp  $FABRIC_CA_CLIENT_HOME/tls/keystore/* $FABRIC_CA_CLIENT_HOME/tls/server.key

# echo "editing the ord-ca admin tlscerts "

# mkdir $PWD/certs/peerorg/msp/tlscacerts
# cp $FABRIC_CA_CLIENT_HOME/tls/ca.crt $PWD/certs/peerorg/msp/tlscacerts/ca.cert

# echo "editing the orderer root tlsca directory"

# mkdir $PWD/certs/peerorg/tlsca
# cp $FABRIC_CA_CLIENT_HOME/tls/ca.crt $PWD/certs/peerorg/tlsca/tls-ca.crt

echo "editing root ca directory"
mkdir $PWD/certs/peeraln/ca
cp $FABRIC_CA_CLIENT_HOME/msp/cacerts/* $PWD/certs/peeraln/ca/peeraln-ca.cert

echo "####### ENROLLING PEER-Aln ADMIN #########"

export FABRIC_CA_CLIENT_TLS_CERTFILES=$PWD/ca/aln-ca/ca-cert.pem
export FABRIC_CA_CLIENT_HOME=$PWD/certs/peeraln/admin
export FABRIC_CA_CLIENT_MSPDIR=msp
set -x
fabric-ca-client enroll -d -u http://admin-aln:adminpw@0.0.0.0:7055
set +x

echo "moving the config file"
cp $PWD/certs/peeraln/msp/config.yaml $FABRIC_CA_CLIENT_HOME/msp/config.yaml

# echo "changing the root ca"
# export FABRIC_CA_CLIENT_TLS_CERTFILES=$PWD/ca/tls-ca/ca-cert.pem

# export FABRIC_CA_CLIENT_MSPDIR=tls
# set -x
# fabric-ca-client enroll -d -u https://admin-org:adminpw@0.0.0.0:7054 --enrollment.profile tls --csr.hosts admin-org --csr.hosts localhost
# set +x

# cp  $FABRIC_CA_CLIENT_HOME/tls/tlscacerts/* $FABRIC_CA_CLIENT_HOME/tls/ca.crt
# cp  $FABRIC_CA_CLIENT_HOME/tls/signcerts/* $FABRIC_CA_CLIENT_HOME/tls/server.crt
# cp  $FABRIC_CA_CLIENT_HOME/tls/keystore/* $FABRIC_CA_CLIENT_HOME/tls/server.key

echo "####### ENROLLING PEER-Aln CLIENT #########"

export FABRIC_CA_CLIENT_TLS_CERTFILES=$PWD/ca/aln-ca/ca-cert.pem
export FABRIC_CA_CLIENT_HOME=$PWD/certs/peeraln/client
export FABRIC_CA_CLIENT_MSPDIR=msp
set -x
fabric-ca-client enroll -d -u http://user-aln:clientpw@0.0.0.0:7055
set +x

echo "moving the config file"
cp $PWD/certs/peeraln/msp/config.yaml $FABRIC_CA_CLIENT_HOME/msp/config.yaml

# echo "changing the root ca"
# export FABRIC_CA_CLIENT_TLS_CERTFILES=$PWD/ca/tls-ca/ca-cert.pem

# export FABRIC_CA_CLIENT_MSPDIR=tls
# set -x
# fabric-ca-client enroll -d -u https://user-org:clientpw@0.0.0.0:7054 --enrollment.profile tls --csr.hosts client-org --csr.hosts localhost
# set +x

# cp  $FABRIC_CA_CLIENT_HOME/tls/tlscacerts/* $FABRIC_CA_CLIENT_HOME/tls/ca.crt
# cp  $FABRIC_CA_CLIENT_HOME/tls/signcerts/* $FABRIC_CA_CLIENT_HOME/tls/server.crt
# cp  $FABRIC_CA_CLIENT_HOME/tls/keystore/* $FABRIC_CA_CLIENT_HOME/tls/server.key



echo "####### ENROLLING PEER GAP #########"

export FABRIC_CA_CLIENT_TLS_CERTFILES=$PWD/ca/gap-ca/ca-cert.pem
export FABRIC_CA_CLIENT_HOME=$PWD/certs/peergap/peer
export FABRIC_CA_CLIENT_MSPDIR=msp
set -x
fabric-ca-client enroll -d -u http://peer-gap:peerpw@0.0.0.0:7056
set +x

echo "moving the config file"
cp $PWD/certs/peergap/msp/config.yaml $FABRIC_CA_CLIENT_HOME/msp/config.yaml

# echo "changing the root ca"
# export FABRIC_CA_CLIENT_TLS_CERTFILES=$PWD/ca/tls-ca/ca-cert.pem

# export FABRIC_CA_CLIENT_MSPDIR=tls
# set -x
# fabric-ca-client enroll -d -u https://peer-org:peerpw@0.0.0.0:7054 --enrollment.profile tls --csr.hosts peer-org --csr.hosts localhost
# set +x

# cp  $FABRIC_CA_CLIENT_HOME/tls/tlscacerts/* $FABRIC_CA_CLIENT_HOME/tls/ca.crt
# cp  $FABRIC_CA_CLIENT_HOME/tls/signcerts/* $FABRIC_CA_CLIENT_HOME/tls/server.crt
# cp  $FABRIC_CA_CLIENT_HOME/tls/keystore/* $FABRIC_CA_CLIENT_HOME/tls/server.key

# echo "editing the ord-ca admin tlscerts "

# mkdir $PWD/certs/peerorg/msp/tlscacerts
# cp $FABRIC_CA_CLIENT_HOME/tls/ca.crt $PWD/certs/peerorg/msp/tlscacerts/ca.cert

# echo "editing the orderer root tlsca directory"

# mkdir $PWD/certs/peerorg/tlsca
# cp $FABRIC_CA_CLIENT_HOME/tls/ca.crt $PWD/certs/peerorg/tlsca/tls-ca.crt

echo "editing root ca directory"
mkdir $PWD/certs/peergap/ca
cp $FABRIC_CA_CLIENT_HOME/msp/cacerts/* $PWD/certs/peergap/ca/peergap-ca.cert

echo "####### ENROLLING PEER-Gap ADMIN #########"

export FABRIC_CA_CLIENT_TLS_CERTFILES=$PWD/ca/gap-ca/ca-cert.pem
export FABRIC_CA_CLIENT_HOME=$PWD/certs/peergap/admin
export FABRIC_CA_CLIENT_MSPDIR=msp
set -x
fabric-ca-client enroll -d -u http://admin-gap:adminpw@0.0.0.0:7056
set +x

echo "moving the config file"
cp $PWD/certs/peergap/msp/config.yaml $FABRIC_CA_CLIENT_HOME/msp/config.yaml

# echo "changing the root ca"
# export FABRIC_CA_CLIENT_TLS_CERTFILES=$PWD/ca/tls-ca/ca-cert.pem

# export FABRIC_CA_CLIENT_MSPDIR=tls
# set -x
# fabric-ca-client enroll -d -u https://admin-org:adminpw@0.0.0.0:7054 --enrollment.profile tls --csr.hosts admin-org --csr.hosts localhost
# set +x

# cp  $FABRIC_CA_CLIENT_HOME/tls/tlscacerts/* $FABRIC_CA_CLIENT_HOME/tls/ca.crt
# cp  $FABRIC_CA_CLIENT_HOME/tls/signcerts/* $FABRIC_CA_CLIENT_HOME/tls/server.crt
# cp  $FABRIC_CA_CLIENT_HOME/tls/keystore/* $FABRIC_CA_CLIENT_HOME/tls/server.key

echo "####### ENROLLING PEER-Gap CLIENT #########"

export FABRIC_CA_CLIENT_TLS_CERTFILES=$PWD/ca/gap-ca/ca-cert.pem
export FABRIC_CA_CLIENT_HOME=$PWD/certs/peergap/client
export FABRIC_CA_CLIENT_MSPDIR=msp
set -x
fabric-ca-client enroll -d -u http://user-gap:clientpw@0.0.0.0:7056
set +x

echo "moving the config file"
cp $PWD/certs/peergap/msp/config.yaml $FABRIC_CA_CLIENT_HOME/msp/config.yaml

# echo "changing the root ca"
# export FABRIC_CA_CLIENT_TLS_CERTFILES=$PWD/ca/tls-ca/ca-cert.pem

# export FABRIC_CA_CLIENT_MSPDIR=tls
# set -x
# fabric-ca-client enroll -d -u https://user-org:clientpw@0.0.0.0:7054 --enrollment.profile tls --csr.hosts client-org --csr.hosts localhost
# set +x

# cp  $FABRIC_CA_CLIENT_HOME/tls/tlscacerts/* $FABRIC_CA_CLIENT_HOME/tls/ca.crt
# cp  $FABRIC_CA_CLIENT_HOME/tls/signcerts/* $FABRIC_CA_CLIENT_HOME/tls/server.crt
# cp  $FABRIC_CA_CLIENT_HOME/tls/keystore/* $FABRIC_CA_CLIENT_HOME/tls/server.key