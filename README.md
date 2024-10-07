# Build soci oracle using script

## What is this?

- bash script to easily build soci using oracle
  - See [build.sh](build.sh) for more information. 

## What is soci?

- soci : https://github.com/SOCI/
  - The C++ Database Access Library

## Tested Environment

- Ubuntu 22.04
   - Buliding result of Oracle instant client
      - instantclient 19 : ✅
      - instantclient 21 : ✅
      - instantclient 23 : ❌ 

## To Do

- Set instant client directory in `build.sh`

```
# TODO: Set your instant client directory

# instant client 19 (example directory)
export CMAKE_ORACLE_INCLUDE_DIR=/home/oracle/19/instantclient_19_24/sdk/include
export CMAKE_ORACLE_OCCI_LIBRARY=/home/oracle/19/instantclient_19_24
```

## License

- [LGPL v2.1](LICENSE)


