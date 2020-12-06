#!/bin/bash

for i in {1..20}
do
  	sleep 5
	tc qdisc add dev ens34 root netem loss 100%
	sleep 2
	tc qdisc del dev ens34 root netem loss 100%
done
