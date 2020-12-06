#!/bin/bash

ifpps -lcd ens34 -t 100 > "/mnt/hgfs/mptcp_ori/def_ens34.csv" &
BGPID1=$!
ifpps -lcd ens35 -t 100 > "/mnt/hgfs/mptcp_ori/def_ens35.csv" &
BGPID2=$!

sleep 1

iperf -c 10.222.20.2 -t 60

sleep 5

kill -9 $BGPID1 $BGPID2
