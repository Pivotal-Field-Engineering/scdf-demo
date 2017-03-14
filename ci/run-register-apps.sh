#!/bin/bash
#
# All CF_* variables are provided externally from this script

set -e -x

pushd scdf-demo/register-apps
  ./mvnw package
  java -jar target/register-apps-0.0.1-SNAPSHOT.jar -DCF_API=$CF_API -DCF_USER=$CF_USER -DCF_PASSWORD=$CF_PASSWORD -DCF_ORG=$CF_ORG -DCF_SPACE=$CF_SPACE
popd


