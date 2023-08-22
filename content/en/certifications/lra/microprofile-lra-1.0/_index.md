---
title : "MicroProfile LRA 1.0 Compatible Certification Request"
description: "Narayana's documentation"
lead: ""
date: 2020-10-06T08:48:45+00:00
lastmod: 2020-10-06T08:48:45+00:00
draft: false
images: []
layout: documentation
weight: 100
---

  Specification details
  ----
  
  Repository - <https://github.com/eclipse/microprofile-lra>
  
  MicroProfile LRA 1.0
  ----
  
  -   Tag - <https://github.com/eclipse/microprofile-lra/releases/tag/1.0>
  
  -   Commit -
      <https://github.com/eclipse/microprofile-lra/commit/99ee9b1f7dc02b10ee7b7f15d26234ad8ba2df15>
  
  -   Download -
      <https://download.eclipse.org/microprofile/staging/microprofile-lra-1.0>
  
  MicroProfile LRA 1.0-RC3 (used for the CCR)
  ----
  
  -   Tag -
      <https://github.com/eclipse/microprofile-lra/releases/tag/1.0-RC3>
  
  -   Commit -
      <https://github.com/eclipse/microprofile-lra/commit/169d01605b3b2f5ec7f2b8deefa403c8cf949973>
  
  -   Download -
      <https://download.eclipse.org/microprofile/microprofile-lra-1.0-RC3>
  
  The are no differences between LRA 1.0 and LRA 1.0-RC3. The API and TCK
  binaries are the same.
  
  Implementation details
  ----
  
  -   Implementation Name - [Narayana](https://narayana.io/)
  
  -   Version - 5.11.1.Final
  
  -   Download Binary -
      <http://www.jboss.org/jbosstm/downloads/5.11.1.Final/binary/narayana-full-5.11.1.Final-bin.zip>
  
  -   Download Source Code -
      <http://www.jboss.org/jbosstm/downloads/5.11.1.Final/src/narayana-full-5.11.1.Final-src.zip>
  
  -   VCS revision tag
      <https://github.com/jbosstm/narayana/releases/tag/5.11.1.Final>
  
  -   VCS revision commit
      <https://github.com/jbosstm/narayana/commit/d5e35b549fad8fe929179ce59cf80aec4794dfcc>
  
  Compatibility Certification Request JDK 11
  ----

  **Environment details**
  
  
  -   **Output of \`uname -a\`**
  
      ``` {.language-haml}
      Linux XYZ 5.10.15-200.fc33.x86_64 #1 SMP Wed Feb 10 17:46:55 UTC 2021 x86_64 x86_64 x86_64 GNU/Linux
      ```
  
  -   **Output of \`java -version\`**
  
      ``` {.language-haml}
      openjdk version "11.0.8" 2020-07-14
      OpenJDK Runtime Environment AdoptOpenJDK (build 11.0.8+10)
      OpenJDK 64-Bit Server VM AdoptOpenJDK (build 11.0.8+10, mixed mode)
      ```
  
  -   **Output of \`mvn -version\`**
  
      ``` {.language-haml}
      Apache Maven 3.6.3 (cecedd343002696d0abb50b32b541b8a6ba2883f)
      Maven home: /opt/maven/apache-maven-3.6.3
      Java version: 11.0.8, vendor: AdoptOpenJDK, runtime: /opt/java/hotspot/jdk-11.0.8+10
      Default locale: en_US, platform encoding: UTF-8
      OS name: "linux", version: "5.10.15-200.fc33.x86_64", arch: "amd64", family: "unix"
      ```
  
  CCR execution JDK 11
  ----
  -   Command - `WORKSPACE=$PWD PROFILE=LRA ./scripts/hudson/narayana.sh`
  
  -   Results failsafe-reports zip -
      [lra-1.0-jdk-11-ccr-results.zip](lra-1.0-jdk-11-ccr-results.zip)
  
  -   **Results**
  
      ``` {.language-haml}
      -------------------------------------------------------------------------------
      Test set: org.eclipse.microprofile.lra.tck.TckCancelOnTests
      -------------------------------------------------------------------------------
      Tests run: 6, Failures: 0, Errors: 0, Skipped: 0, Time elapsed: 9.464 s - in org.eclipse.microprofile.lra.tck.TckCancelOnTests
      -------------------------------------------------------------------------------
      Test set: org.eclipse.microprofile.lra.tck.TckContextTests
      -------------------------------------------------------------------------------
      Tests run: 11, Failures: 0, Errors: 0, Skipped: 0, Time elapsed: 40.809 s - in org.eclipse.microprofile.lra.tck.TckContextTests
      -------------------------------------------------------------------------------
      Test set: org.eclipse.microprofile.lra.tck.TckInvalidSignaturesTests
      -------------------------------------------------------------------------------
      Tests run: 5, Failures: 0, Errors: 0, Skipped: 0, Time elapsed: 40.588 s - in org.eclipse.microprofile.lra.tck.TckInvalidSignaturesTests
      -------------------------------------------------------------------------------
      Test set: org.eclipse.microprofile.lra.tck.TckLRATypeTests
      -------------------------------------------------------------------------------
      Tests run: 75, Failures: 0, Errors: 0, Skipped: 0, Time elapsed: 12.774 s - in org.eclipse.microprofile.lra.tck.TckLRATypeTests
      -------------------------------------------------------------------------------
      Test set: org.eclipse.microprofile.lra.tck.TckParticipantTests
      -------------------------------------------------------------------------------
      Tests run: 5, Failures: 0, Errors: 0, Skipped: 0, Time elapsed: 37.642 s - in org.eclipse.microprofile.lra.tck.TckParticipantTests
      -------------------------------------------------------------------------------
      Test set: org.eclipse.microprofile.lra.tck.TckRecoveryTests
      -------------------------------------------------------------------------------
      Tests run: 2, Failures: 0, Errors: 0, Skipped: 0, Time elapsed: 41.537 s - in org.eclipse.microprofile.lra.tck.TckRecoveryTests
      -------------------------------------------------------------------------------
      Test set: org.eclipse.microprofile.lra.tck.TckTests
      -------------------------------------------------------------------------------
      Tests run: 23, Failures: 0, Errors: 0, Skipped: 0, Time elapsed: 24.288 s - in org.eclipse.microprofile.lra.tck.TckTests
      -------------------------------------------------------------------------------
      Test set: org.eclipse.microprofile.lra.tck.TckUnknownStatusTests
      -------------------------------------------------------------------------------
      Tests run: 2, Failures: 0, Errors: 0, Skipped: 0, Time elapsed: 19.13 s - in org.eclipse.microprofile.lra.tck.TckUnknownStatusTests
      -------------------------------------------------------------------------------
      Test set: org.eclipse.microprofile.lra.tck.TckUnknownTests
      -------------------------------------------------------------------------------
      Tests run: 4, Failures: 0, Errors: 0, Skipped: 0, Time elapsed: 29.359 s - in org.eclipse.microprofile.lra.tck.TckUnknownTests
  
      [INFO] Results:
      [INFO]
      [INFO] Tests run: 133, Failures: 0, Errors: 0, Skipped: 0
      ```
  
  Compatibility Certification Request JDK 8
----
  
  **Environment details**
  
  -   **Output of \`uname -a\`**
  
      ``` {.language-haml}
      Linux XYZ 5.10.15-200.fc33.x86_64 #1 SMP Wed Feb 10 17:46:55 UTC 2021 x86_64 x86_64 x86_64 GNU/Linux
      ```
  
  -   **Output of \`java -version\`**
  
      ``` {.language-haml}
      openjdk version "1.8.0_265"
      OpenJDK Runtime Environment (AdoptOpenJDK)(build 1.8.0_265-b01)
      OpenJDK 64-Bit Server VM (AdoptOpenJDK)(build 25.265-b01, mixed mode)
      ```
  
  -   **Output of \`mvn -version\`**
  
      ``` {.language-haml}
      Apache Maven 3.6.3 (cecedd343002696d0abb50b32b541b8a6ba2883f)
      Maven home: /opt/maven/apache-maven-3.6.3
      Java version: 1.8.0_265, vendor: AdoptOpenJDK, runtime: /opt/java/hotspot/jdk8u265-b01/jre
      Default locale: en_US, platform encoding: UTF-8
      OS name: "linux", version: "5.10.15-200.fc33.x86_64", arch: "amd64", family: "unix"
      ```
  
  CCR execution JDK 8
  ---
  -   Command - `WORKSPACE=$PWD PROFILE=LRA ./scripts/hudson/narayana.sh`
  
  -   Results failsafe-reports zip -
      [lra-1.0-jdk-8-ccr-results.zip](lra-1.0-jdk-8-ccr-results.zip)
  
  -   **Results**
  
      ``` {.language-haml}
      -------------------------------------------------------------------------------
      Test set: org.eclipse.microprofile.lra.tck.TckCancelOnTests
      -------------------------------------------------------------------------------
      Tests run: 6, Failures: 0, Errors: 0, Skipped: 0, Time elapsed: 9.499 s - in org.eclipse.microprofile.lra.tck.TckCancelOnTests
      -------------------------------------------------------------------------------
      Test set: org.eclipse.microprofile.lra.tck.TckContextTests
      -------------------------------------------------------------------------------
      Tests run: 11, Failures: 0, Errors: 0, Skipped: 0, Time elapsed: 40.819 s - in org.eclipse.microprofile.lra.tck.TckContextTests
      -------------------------------------------------------------------------------
      Test set: org.eclipse.microprofile.lra.tck.TckInvalidSignaturesTests
      -------------------------------------------------------------------------------
      Tests run: 5, Failures: 0, Errors: 0, Skipped: 0, Time elapsed: 41.495 s - in org.eclipse.microprofile.lra.tck.TckInvalidSignaturesTests
      -------------------------------------------------------------------------------
      Test set: org.eclipse.microprofile.lra.tck.TckLRATypeTests
      -------------------------------------------------------------------------------
      Tests run: 75, Failures: 0, Errors: 0, Skipped: 0, Time elapsed: 12.997 s - in org.eclipse.microprofile.lra.tck.TckLRATypeTests
      -------------------------------------------------------------------------------
      Test set: org.eclipse.microprofile.lra.tck.TckParticipantTests
      -------------------------------------------------------------------------------
      Tests run: 5, Failures: 0, Errors: 0, Skipped: 0, Time elapsed: 36.532 s - in org.eclipse.microprofile.lra.tck.TckParticipantTests
      -------------------------------------------------------------------------------
      Test set: org.eclipse.microprofile.lra.tck.TckRecoveryTests
      -------------------------------------------------------------------------------
      Tests run: 2, Failures: 0, Errors: 0, Skipped: 0, Time elapsed: 44.449 s - in org.eclipse.microprofile.lra.tck.TckRecoveryTests
      -------------------------------------------------------------------------------
      Test set: org.eclipse.microprofile.lra.tck.TckTests
      -------------------------------------------------------------------------------
      Tests run: 23, Failures: 0, Errors: 0, Skipped: 0, Time elapsed: 24.731 s - in org.eclipse.microprofile.lra.tck.TckTests
      -------------------------------------------------------------------------------
      Test set: org.eclipse.microprofile.lra.tck.TckUnknownStatusTests
      -------------------------------------------------------------------------------
      Tests run: 2, Failures: 0, Errors: 0, Skipped: 0, Time elapsed: 19.886 s - in org.eclipse.microprofile.lra.tck.TckUnknownStatusTests
      -------------------------------------------------------------------------------
      Test set: org.eclipse.microprofile.lra.tck.TckUnknownTests
      -------------------------------------------------------------------------------
      Tests run: 4, Failures: 0, Errors: 0, Skipped: 0, Time elapsed: 30.248 s - in org.eclipse.microprofile.lra.tck.TckUnknownTests
      [INFO] Results:
      [INFO]
      [INFO] Tests run: 133, Failures: 0, Errors: 0, Skipped: 0
      ```
  
  Replicating the TCK execution
  
  1.  ``` git clone https://github.com/jbosstm/narayana.git -b 5.11.1.Final && cd narayana ```
  
  2.  ```WORKSPACE=$PWD PROFILE=LRA ./scripts/hudson/narayana.sh```
  