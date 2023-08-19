cd /
#mkdir /media/usb
mount /dev/sda1 /media/usb
cd /media/usb
ls
cp check_label.py /usr/local/factory/py/test/pytests/
cp itriad_tests.test_list.json /usr/local/factory/py/test/test_lists/
cd ./check_label_static
cp check_label.html check_label.css /usr/local/factory/py/test/pytests/check_label_static/
umount /media/usb
vim /usr/local/factory/py/test/test_lists/itriad_tests.test_list.json
#vim /usr/local/factory/py/test/pytests/check_label.py
