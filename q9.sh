#!/bin/bash

function luhn_validate
{
    num=$1
    shift 1

    len=${#num}
    is_odd=1
    sum=0
    for((t = len - 1; t >= 0; --t)) {
        digit=${num:$t:1}

        if [[ $is_odd -eq 1 ]]; then
            sum=$(( sum + $digit ))
        else
            sum=$(( $sum + ( $digit != 9 ? ( ( 2 * $digit ) % 9 ) : 9 ) ))
        fi

        is_odd=$(( ! $is_odd ))
    }

    # NOTE: returning exit status of 0 on success
    return $(( 0 != ( $sum % 10 ) ))
}


read s
str=`echo $s | tr -d " "`
if luhn_validate "$str"; then
	echo "Valid"
else
        echo "Invalid"
fi
