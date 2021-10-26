#!/bin/bash
a=$1
b=$2
let c=a+b
let d=a-b
let e=a*b
flag=0
if ((e<0));then
	flag=1
fi
if ((a<0)); then
	let a=-1*a
fi
if ((b<0)); then
	let b=-1*b
fi
if ((b==0)); then
	f=#
else
	let f=a/b
	let fir=(a*10/b)%10
	let sec=(a*100/b)%10
	f=$f.$fir$sec
	if ((flag));then
		f=-$f
	fi
fi
echo $c $d $e $f

