# [build_soci_oracle_linux](https://github.com/JayTwoLab/build_soci_oracle_linux)

> [English](README.md), [Korean](README.ko.md)

- This document provides a bash script to facilitate building the SOCI library with Oracle on Linux systems.

**What is SOCI?**

SOCI is a C++ database access library that supports various database backends. 

**Tested Environment**

- Ubuntu 22.04
  - Oracle Instant Client build results:
    - Instant Client 19: Success
    - Instant Client 21: Success
    - Instant Client 23: Failure

**Setup Instructions**

1. Configure the Instant Client directory in the `build.sh` file:

   ```bash
   # TODO: Set your Instant Client directory

   # Example for Instant Client 19
   export CMAKE_ORACLE_INCLUDE_DIR=/home/oracle/19/instantclient_19_24/sdk/include
   export CMAKE_ORACLE_OCCI_LIBRARY=/home/oracle/19/instantclient_19_24
   ```

2. Define the installation directory. If not specified, the default path will be used:

   ```bash
   cmake -DCMAKE_INSTALL_PREFIX=/your/custom/path
   ```

   - Default directories:
     - Include files (`*.h`): `/usr/include/soci`
     - Library files (`*.so`, `*.a`): `/usr/local/lib64`

**License**

- GPL v2.1
- https://github.com/JayTwoLab/build_soci_oracle_linux
