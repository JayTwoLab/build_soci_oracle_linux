#!/usr/bin/bash

######################################
# Build soci oracle in linux
######################################

####################################
# [1] clear working directory
#
# TODO: change to your working directory

echo 'rm -rf soci-master'
rm -rf soci-master

####################################
# [2] prepare to build

# extarct zip of soci master
#
unzip master.zip
cd soci-master

# or, clone from github
#
# git clone https://github.com/SOCI/soci.git
# cd soci

# create building directory
mkdir build
cd build

pwd # display current direcotry

####################################
# [3] cmake

# TODO: set your instant client directory

# instant client 19
export  CMAKE_ORACLE_INCLUDE_DIR=/home/oracle/19/instantclient_19_24/sdk/include
export CMAKE_ORACLE_OCCI_LIBRARY=/home/oracle/19/instantclient_19_24

# instant client 21
#export  CMAKE_ORACLE_INCLUDE_DIR=/home/oracle/21/instantclient_21_14/sdk/include
#export CMAKE_ORACLE_OCCI_LIBRARY=/home/oracle/21/instantclient_21_14

# WARN!! ic23 does not work!!
# instant client 23
#export  CMAKE_ORACLE_INCLUDE_DIR=/home/oracle/23/instantclient_23_4/sdk/include
#export CMAKE_ORACLE_OCCI_LIBRARY=/home/oracle/23/instantclient_23_4

export            PATH=$CMAKE_ORACLE_OCCI_LIBRARY:$PATH
export LD_LIBRARY_PATH=$CMAKE_ORACLE_OCCI_LIBRARY:$LD_LIBRARY_PATH

# build only oracle (except other db)
cmake .. \
 -DWITH_BOOST=OFF \
 -DWITH_DB2=OFF \
 -DWITH_FIREBIRD=OFF \
 -DWITH_MYSQL=OFF \
 -DWITH_POSTGRESQL=OFF \
 -DWITH_SQLITE3=OFF \
 -DWITH_ORACLE=ON \
 -DORACLE_INCLUDE_DIR=$CMAKE_ORACLE_INCLUDE_DIR \
 -DORACLE_OCCI_LIBRARY=$CMAKE_ORACLE_OCCI_LIBRARY

#####################################
# [4] make

make

ls lib/ # display result

#####################################
# [5] make install
#

sudo make install
