#!/bin/bash

CMD=$1

if [ -z "$CMD" ]; then
  CMD="vagrant up"
fi


#161

VMS="/home/Vm/Vm1 /home/Vm/Vm2 /home/Vm/Vm3 /home/Vm/Vm4 /home/Vm/Vm5 /home/Vm/Vm6"

for  VM in $VMS; do
   for((i=1;i<=6;i++)); do
     ansible "192.168.100.16"$i -m shell -a "cd $VM && $CMD"
   done
done


