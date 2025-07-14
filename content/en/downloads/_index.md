---
title : "Latest Narayana Release"
description: "Downloads"
lead: ""
date: 2020-10-06T08:48:45+00:00
lastmod: 2020-10-06T08:48:45+00:00
draft: false
images: []
weight: 100
layout: default
---
The narayana-full zip is not downloadable anymore from the website, but you can still download single components from [maven central](https://mvnrepository.com/artifact/org.jboss.narayana), build it from github (i.e. [7.2.2.Final](https://github.com/jbosstm/narayana/tree/7.2.2.Final)) or download it from github tag (i.e [7.2.2.Final](https://github.com/jbosstm/narayana/releases/tag/7.2.2.Final))


| | Version | Date | License |
| ---------------------------------------- | ----------- | ----------------- | ---------------- |
| [Narayana Source Code](https://github.com/jbosstm/narayana/releases/tag/7.2.2.Final) | 7.2.2.Final | 2025-05-12 | Apache-2.0

[Legacy Narayana versions](../downloads-other/index.html)

### GPG Public Key

Starting with version 7.2.3.Final, all Narayana [Maven artifacts](https://mvnrepository.com/artifact/org.jboss.narayana) are signed with jbosstm GPG key.
The corresponding public key is:

**ID**: rsa4096/F54B74513B168DB7 2025-07-11\
**Fingerprint**: 3AA1 3E1B 77D4 1EEC 473E  1FAF F54B 7451 3B16 8DB7\
**From version**: 7.2.3.Final
<a href="/files/F54B74513B168DB7.gpg" download>**Download jbosstm's Public Key**</a>

To verify the authenticity of jbosstm Maven artifacts, download both the `.jar` file and its corresponding `.asc` signature file from Maven Central.
Then, import the above public GPG key using
```bash
gpg --import F54B74513B168DB7.gpg
```
Once the key is imported, verify the artifact with the following command:
```bash
gpg --verify artifact.jar.asc artifact.jar
```
If the verification is successful, it confirms that the artifact was signed with the official jbosstm GPG key.

> **Warning:** Before verifying any Narayana artifact, ensure you're using the correct jbosstm public key corresponding to the specific version you're verifying.
> The Narayana team may rotate signing keys over time, so always refer to the official website to obtain the appropriate key.

Other related files
-------------------

### Narayana JTS IDL Files

-   [
    ArjunaOTS.idl](https://github.com/jbosstm/narayana/tree/7.2.2.Final/ArjunaJTS/idl/src/main/idl/arjuna/ArjunaOTS.idl)
-   [
    CosTSInteroperation.idl](https://github.com/jbosstm/narayana/tree/7.2.2.Final/ArjunaJTS/idl/src/main/idl/omg/CosTSInteroperation.idl)
-   [
    CosTSPortability.idl](https://github.com/jbosstm/narayana/tree/7.2.2.Final/ArjunaJTS/idl/src/main/idl/omg/CosTSPortability.idl)
-   [
    CosTransactions.idl](https://github.com/jbosstm/narayana/tree/7.2.2.Final/ArjunaJTS/idl/src/main/idl/omg/CosTransactions.idl)
-   [
    TSIdentification.idl](https://github.com/jbosstm/narayana/tree/7.2.2.Final/ArjunaJTS/idl/src/main/idl/omg/TSIdentification.idl)
-   [
    XA.idl](https://github.com/jbosstm/narayana/tree/7.2.2.Final/ArjunaJTS/idl/src/main/idl/omg/XA.idl)

### Narayana XTS WSDL and XSD Files

-   [ WS-C wscoor
    1.1](https://github.com/jbosstm/narayana/tree/7.2.2.Final/XTS/WS-C/dev/dd/wscoor1.1/wsdl)
-   [ WS-T
    wsarjtx](https://github.com/jbosstm/narayana/tree/7.2.2.Final/XTS/WS-T/dev/dd/wsarjtx/wsdl)
-   [ WS-T wscoor
    1.1](https://github.com/jbosstm/narayana/tree/7.2.2.Final/XTS/WS-T/dev/dd/wscoor1.1/wsdl)
