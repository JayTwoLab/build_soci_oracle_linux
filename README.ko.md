# `soci`를 Linux 환경에서 Oracle과 함께 빌드하기 위한 스크립트

## 소개

- 이 저장소는 Linux에서 Oracle을 사용하여 `soci`를 쉽게 빌드할 수 있는 bash 스크립트를 제공합니다.
- 자세한 내용은 [build.sh](https://github.com/JayTwoLab/build_soci_oracle_linux/blob/main/build.sh) 를 참조하세요.

## soci란 무엇인가?

`soci`는 C++ 데이터베이스 액세스 라이브러리입니다. 자세한 내용은 [SOCI GitHub 페이지](https://github.com/SOCI/) 를 참고하세요.

## 테스트된 환경

- **운영 체제**: Ubuntu 22.04
- **Oracle Instant Client 버전 및 빌드 결과**:
  - Instant Client 19: ✅ 성공
  - Instant Client 21: ✅ 성공
  - Instant Client 23: ❌ 실패

## 스크립트 사용을 위한 설정

1. **Instant Client 디렉토리 설정**: `build.sh` 파일에서 다음 부분을 수정하세요.

   ```bash
   # TODO: Set your instant client directory

   # Instant Client 19 (예시 디렉토리)
   export CMAKE_ORACLE_INCLUDE_DIR=/home/oracle/19/instantclient_19_24/sdk/include
   export CMAKE_ORACLE_OCCI_LIBRARY=/home/oracle/19/instantclient_19_24
   ```

2. **설치 디렉토리 정의**: 설치 경로를 지정하지 않으면 기본 경로에 설치됩니다.

   - **설정 방법**:

     ```bash
     cmake -DCMAKE_INSTALL_PREFIX=/your/custom/path
     ```

   - **기본 설치 경로**:
     - 헤더 파일(`*.h`) 디렉토리: `/usr/include/soci`
     - 라이브러리 파일(`*.so`, `*.a`) 디렉토리: `/usr/local/lib64`

## 라이선스

- 이 프로젝트는 [LGPL v2.1](https://www.gnu.org/licenses/old-licenses/lgpl-2.1.html) 라이선스를 따릅니다.
- 자세한 내용은 [프로젝트 저장소](https://github.com/JayTwoLab/build_soci_oracle_linux) 를 확인하세요. 
