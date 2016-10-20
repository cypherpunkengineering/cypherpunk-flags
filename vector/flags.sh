#!/bin/bash
for i in Flag_of_*;do
	country=`echo "$i"|sed -e 's/Flag_of_//' -e 's/\.svg//' -e 's/_/ /g' -e 's/the //'`
	cc=`grep -i "$country" $HOME/Development/cypherpunk/cypherpunk-backend-framework/util/world.coffee|cut -d : -f1`
	echo "$country is $cc"
done
