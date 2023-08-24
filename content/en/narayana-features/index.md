---
title : "Narayana Features"
description: "Narayana's documentation"
lead: ""
date: 2020-10-06T08:48:45+00:00
lastmod: 2020-10-06T08:48:45+00:00
draft: false
images: []
layout: documentation
weight: 100
---
Narayana is a pure Java multi-modal transaction service that supports
distributed transactions in CORBA, J2EE and Web services environments.

| | JTA | JTS | XTS | Compensations Framework | RTS | STM | Arjuna | TXOJ |
| :---------: | :----: | :----: | :----: | :--------------------: | :----: | :---: | :------: | :----: |
| ACID| ✔| ✔| ✔| | ✔| ✔| ✔| ✔| 
| Synchronizations| ✔| ✔| ✔| | ✔|| ✔| |
| Nested transactions| ✔| ✔| ✔| | | ✔| ✔| ✔|
| Automated failure recovery| ✔| ✔| ✔| | ✔| | ✔| ✔|
| Transaction log (file system, JDBC, HornetQ)| ✔| ✔| ✔| | ✔| ✔| ✔| ✔|
| Jakarta Transactions API| ✔| ✔| ✔|
| XAResource| ✔| ✔| ✔| | ✔|
| JTA bridging| | | ✔| | ✔| 
| Provides Annotations API| ✔| ✔| ✔|      ✔| | ✔| 
| Remote transactions via JBoss remoting| ✔| 
| Remote transactions via CORBA| | ✔|
| Remote transactions via SOAP| | | ✔|      ✔| 
| Remote transactions via REST| | | | | ✔| |
| In memory transactions| | | | | | ✔| ✔| ✔|
| Multiversion concurrency control| | | | | | ✔| 
| CORBA Object Transaction Service (OTS) 1.1 compliant| | ✔|
| Different ORB compliant: JacORB, JDK ORB, IBM ORB\*| | ✔|
| WS-Atomic Transaction v1.1 compliant| | |  ✔| 
| WS-Atomic Transaction v1.2 compliant| | |  ✔| 
| WS-Business Activity v1.1 compliant| | |  ✔| ✔|
| WS-Business Activity v1.2 compliant| | |  ✔| ✔|
| DTP TX|
| Commercial support| ✔| ✔| ✔| 