#!/bin/bash

set -eux

sbt -v \
  '++ 2.12.16! -v' \
  "test" \
  mimaReportBinaryIssues \
  checkScalariform \
  '++ 2.13.8! -v' \
  "project root213" \
  "test" \
  mimaReportBinaryIssues
