# Build soci oracle using script

## What is this?

- bash script to easily build soci using oracle, in Linux
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

1. Set instant client directory in `build.sh`

```
# TODO: Set your instant client directory

# instant client 19 (example directory)
export CMAKE_ORACLE_INCLUDE_DIR=/home/oracle/19/instantclient_19_24/sdk/include
export CMAKE_ORACLE_OCCI_LIBRARY=/home/oracle/19/instantclient_19_24
```

2. Define installation direcotry. If you do not set a value, it will be installed by default.

   - How to define

```
cmake -DCMAKE_INSTALL_PREFIX=/your/custom/path 
```

   - Default directory
        - Include(*.h) directory : `/usr/include/soci`
        - Lib(*.so,*.a) directory : `/usr/local/lib64`


## License

- [LGPL v2.1](LICENSE)


