# progress-bar

```
#!/bin/bash

declare -r BAR_SIZE="##########"
declare -r MAX_BAR_SIZE=${#BAR_SIZE}

range=$1

for i in $(seq 1 $range); do

  perc=$(((i * 100) / $range))
  percBar=$((perc * MAX_BAR_SIZE / 100))

  # Simulating a command
  sleep 1

  echo -ne "\\r[${BAR_SIZE:0:percBar}] $perc %"

done

echo -e "\r"

exit 0
```
### Reference:
- https://medium.com/meninunes/bash-construindo-indicador-de-progresso-8de94c37683
