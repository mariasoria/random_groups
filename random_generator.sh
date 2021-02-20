#!/bin/bash

# Recibir los parametros
# Por ahora, los voy a poner hardcoded aqui
Attendants=('Laura' 'Jesus' 'Marc' 'Helena' 'Vicente' 'Hugo' 'Marta' 'Monica' 'Emilio')

size=$((${#Attendants[@]}-1)) # last index. Ex. 9 elements -> size = 8

# Coger elementos segun indices
index_member=0
random_seq=$(seq 0 "$size" | shuf)
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
			previous_last_index=$((size-1)) # index of size
			if [[  "$index_member" == "$previous_last_index" ]] ; then
				tamanyo_total_random_seq=${#random_seq}
				ultimo_elem_random=${random_seq:tamanyo_total_random_seq-1}
				couple3=$(echo "y ${Attendants[ultimo_elem_random]} ")
				couple=$couple$couple3
				echo "$couple"
				break;
			fi
			echo "$couple"
		fi
		index_member=$((index_member+1))
	done

