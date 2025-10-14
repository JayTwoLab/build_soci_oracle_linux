# [build_soci_oracle_linux](https://github.com/JayTwoLab/build_soci_oracle_linux)

> [English](README.md), [Korean](README.ko.md)

이 문서는 Linux 환경에서 Oracle을 사용하여 SOCI 라이브러리를 빌드하는 방법을 안내하는 bash 스크립트에 대한 설명입니다.

**SOCI란 무엇인가?**

SOCI는 C++ 데이터베이스 액세스 라이브러리로, 다양한 데이터베이스 백엔드를 지원합니다. 

**테스트된 환경**

- Ubuntu 22.04
  - Oracle Instant Client 빌드 결과:
    - Instant Client 19: 성공
    - Instant Client 21: 성공
    - Instant Client 23: ~실패~ 성공 

**스크립트 사용을 위한 설정**

1. `build.sh` 파일에서 Instant Client 디렉토리를 설정합니다.

   ```bash
   # TODO: Instant Client 디렉토리를 설정하세요

   # 예시: Instant Client 19
   export CMAKE_ORACLE_INCLUDE_DIR=/home/oracle/19/instantclient_19_24/sdk/include
   export CMAKE_ORACLE_OCCI_LIBRARY=/home/oracle/19/instantclient_19_24
   ```

2. 설치 디렉토리를 정의합니다. 값을 설정하지 않으면 기본 경로에 설치됩니다.

   ```bash
   cmake -DCMAKE_INSTALL_PREFIX=/your/custom/path
   ```

   - 기본 디렉토리:
     - 헤더 파일(`*.h`): `/usr/include/soci`
     - 라이브러리 파일(`*.so`, `*.a`): `/usr/local/lib64`

**라이선스**

- GPL v3
- https://github.com/JayTwoLab/build_soci_oracle_linux
