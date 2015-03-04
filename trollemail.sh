#!/bin/bash

mensagem="@cos.ufrj.br"
pagina=0

while [ $pagina -le 5 ]
do

if [ $pagina = 0  ]; then
lynx -dump "http://www.google.com/search?q="$mensagem"&start="$pagina"" > trollemail.html

else
lynx -dump "http://www.google.com/search?q="$mensagem"&start="$pagina"" >> trollemail.html
fi

pagina=$((pagina+10))
echo $pagina
done 
