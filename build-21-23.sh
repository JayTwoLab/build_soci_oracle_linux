#
# Built soci using Oracle instance client 23.
# Oracle Instant Client: https://www.oracle.com/database/technologies/instant-client/downloads.html
#
# git clone https://github.com/SOCI/soci
# soci should use the latest version (4.x)

# move to ..../soci/build/
rm -rf build
mkdir build 
cd build

# Instant client path setting
export ORACLE_INSTANT_CLIENT=/home/j2/workspace/oracle/instantclient_23_9

# LD_LIBRARY_PATH settings must be added to environmental settings such as .bashrc in the future for Oracle use
export LD_LIBRARY_PATH=$ORACLE_INSTANT_CLIENT:$LD_LIBRARY_PATH

# Build Oracle Only
cmake -S .. \
  -B build-oracle \
  -DSOCI_TESTS=OFF \
  -DSOCI_EXAMPLES=OFF \
  -DSOCI_BENCH=OFF \
  -DSOCI_ORACLE=ON \
  -DSOCI_ODBC=OFF \
  -DSOCI_MYSQL=OFF \
  -DSOCI_POSTGRESQL=OFF \
  -DSOCI_SQLITE3=OFF \
  -DSOCI_FIREBIRD=OFF \
  -DSOCI_DB2=OFF \
  -DOracle_VERSIONS="23;21;20;19;18;12;11;10" \
  -DOracle_INCLUDE_DIRS=$ORACLE_INSTANT_CLIENT/sdk/include \
  -DOracle_LIBRARIES=$ORACLE_INSTANT_CLIENT/libclntsh.so

cmake --build build-oracle -j
