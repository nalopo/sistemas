#1/bin/bash
contadorw=0
contadorl=0
procesow=0
procesol=0

while read linea
do
col2=`AWK'{print $2}'`
col3=`AWK'{print $3}'`

if col2=='linux';then
contadorl=$((contador(+1)))
procesol=$((procesol+col3))
else
contadorw=$((contadorw+1))
procesow=$((procesow+col3))
fi
done < listados.txt
echo "Windows: $contadorw procesos: $procesow"
echo "Linux: $contadorl procesos: $procesol"