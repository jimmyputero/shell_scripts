
cd /

DIR="/media/usb"
if [ -d "$DIR" ]; then
   echo "'$DIR' já exite"
else
   echo "Diretorio: '$DIR' não encontrado"
   echo "--->Executando mkdir"
   mkdir /media/usb
fi
#depois de vericar o diretorio ou nao, monta o pendrive e copia os arquivos
echo "Montando pendrive em /media/usb"
mount /dev/sda1 /media/usb

echo " abrindo pendrive cd /media/usb"
cd /media/usb

echo "-----Executando ls----------"
ls

echo "copiando arquivos check_label.py, itriad_tests.test_list.json,  "
cp check_label.py /usr/local/factory/py/test/pytests/
cp itriad_tests.test_list.json /usr/local/factory/py/test/test_lists/

echo "acessando a pasta _static do pendrive cd cd ./check_label_static"
cd ./check_label_static

echo "copiando html e css para a pasta _static"
cp check_label.html check_label.css /usr/local/factory/py/test/pytests/check_label_static/

echo "desmontando pen-drive"
umount /media/usb

echo "abrindo o VIM para algum doas arquvos copiados acima"
vim /usr/local/factory/py/test/test_lists/itriad_tests.test_list.json
#vim /usr/local/factory/py/test/pytests/check_label.py
#vim /usr/local/factory/py/test/pytests/check_label_static/check_label.html
#vim usr/local/factory/py/test/pytests/check_label_static/check_label.css
