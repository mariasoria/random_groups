#!/bin/bash

# Get parameters
# Hardcoded so far
Attendants=('Laura' 'Jesus' 'Marc' 'Helena' 'Vicente' 'Hugo' 'Marta' 'Monica' 'Emilio')

# last index. Eg. 9 elements -> last_index = 8
last_index=$((${#Attendants[@]}-1)) 

# Initializing number of members divided
index_member=0

# Store the sequence in a string, so I can get the last element before its iteration
random_seq=$(seq 0 "$last_index" | shuf)

for index in $random_seq
	do
		if [ $((index_member % 2)) -eq 0 ] ; then 
			# first member of the couple
			couple1=$(echo "${Attendants[index]} - ")	
		else
			# second member of the couple
			couple2=$(echo "${Attendants[index]}, ")
			couple=$couple1$couple2
			# check if it is the previous to the last attendant. 
			# In that case, generate a triplet
			previous_last_index=$((last_index-1)) # index of the previous to the last element
			if [[ "$index_member" == "$previous_last_index" ]] ; then
				total_size_random_seq=${#random_seq}
				# Get the last element of the string "random_seq"
				last_elem_random=${random_seq:total_size_random_seq-1}
				couple3=$(echo "y ${Attendants[last_elem_random]} ")
				couple=$couple$couple3
				echo "$couple"
				break;
			fi
			echo "$couple"
		fi
		index_member=$((index_member+1))
	done

