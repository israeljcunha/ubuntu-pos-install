ping www.google.com.br -c 1 >/dev/null; 

if [ "$?" = "0" ] ;
then
	echo -e "${newlinefinal}" 
	echo -e "${newline}"
    echo "==> Conexão Estável		";
    echo -e "${newline}"
    echo "==> Teste de Conexão - SPEEDTEST	";
	echo -e "${newline}"
	speedtest-cli
	echo -e "${newline}"

else
	echo -e "${newlinefinal}" 
	echo -e "${newline}"
    echo "==> Conexão Instável. 	"
    echo -e "${newline}"
fi