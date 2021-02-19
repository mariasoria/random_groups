#!/bin/bash

# Recibir los parametros
# Por ahora, los voy a poner hardcoded aqui
Attendants=('Laura' 'Jesus' 'Marc' 'Helena' 'Vicente' 'Hugo' 'Marta' 'Monica' 'Emilio')

size=$((${#Attendants[@]}-1))

# Coger elementos segun indices
index_member=0
for index in $(seq 0 "$size" | shuf)
do
	if [ $((index_member%2)) -eq 0 ];
	then 
		#primer miembro
		echo "${Attendants[index]} - "
	else
		#segundo miembro
		echo "${Attendants[index]}, "
	fi
	index_member=$((index_member+1))
done


# Imprimir parejas
