#!/bin/bash

# Recibir los parametros
# Por ahora, los voy a poner hardcoded aqui
Attendants=('Laura' 'Jesus' 'Marc' 'Helena' 'Vicente' 'Hugo' 'Marta' 'Monica' 'Emilio')

# last index. Ex. 9 elements -> size = 8
last_index=$((${#Attendants[@]}-1)) 

index_member=0

# Store the sequence in a string
random_seq=$(seq 0 "$last_index" | shuf)

for index in $random_seq
	do
		if [ $((index_member % 2)) -eq 0 ] ; then 
			#primer miembro
			couple1=$(echo "${Attendants[index]} - ")	
		else
			#segundo miembro
			couple2=$(echo "${Attendants[index]}, ")
			couple=$couple1$couple2
			# chequear si es el penultimo. En ese caso mostrar un trio
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

