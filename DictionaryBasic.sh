
#!/bin /bash -x

declare -A sounds
sounds[dog]="bark"
sounds[cow]="moo"
sounds[bird]="tweet"
sounds[wolf]="howl"

echo " Dog Sound " ${sounds[dog]}  #Dog's sound
echo "cow  Sound " ${sounds[cow]}
echo " bird  Sound " ${sounds[bird]}
echo " wolf Sound " ${sounds[wolf]}

echo "All Animal Sound" ${sounds[@]}  #all values
echo "Animal" ${!sounds[@]}  			  #Al  keys
echo "Number of Animal" ${#sounds[@]}  #Number of Elements
unset sounds[dog]   							#Delete dog
