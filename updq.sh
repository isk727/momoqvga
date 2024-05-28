#!/bin/bash
base='/usr/share/momo-19.11.0_raspbian-buster_armv7/html/'
git='https://raw.githubusercontent.com/isk727/momoqvga/main/'
today=`date "+%Y%m%d%H%M%S"`
wget ${git}stylev.css
chmod 777 stylev.css
wget ${git}stylev_sp.css
chmod 777 stylev_sp.css
sudo mv ${base}css/stylev.css ${base}css/stylev.css.${today}
sudo mv stylev.css ${base}css/stylev.css
sudo mv ${base}css/stylev_sp.css ${base}css/stylev_sp.css.${today}
sudo mv stylev_sp.css ${base}css/stylev_sp.css
echo 'Update is completed!'
