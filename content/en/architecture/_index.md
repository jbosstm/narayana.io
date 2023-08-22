---
title : "Architecture"
description: "Narayana's documentation"
lead: ""
date: 2020-10-06T08:48:45+00:00
lastmod: 2020-10-06T08:48:45+00:00
draft: false
images: []
layout: documentation
weight: 100
---

This page contains references to various architecture papers and
documents related to the JBoss Transaction Service. Since the product
has been around for many years, some of these documents may be
out-of-date; where necessary, we will update them, so watch this space!
Some general notes first:

-   ArjunaCore is the transaction system at the heart of all of our
    transaction products. It is flexible, supporting ACID transactions
    as well as extended transactions. It\'s also distribution agnostic
    and can be used entirely by itself, without recourse to any other
    external entity or software.

-   The original transaction system was called Arjuna. It is now the
    Narayana Transaction Service.

An overview of the architecture of JBoss Transactions.
------------------------------------------------------

As can be seen below, JBoss Transactions is made up of a number of
different modules.

![](narayana-architecture-diagram.png){.img-responsive}

-   **ORB Portability:** in order to ensure that the JTS transaction
    service can run on any CORBA compliant ORB, we developed an ORB
    portability layer, which isolates the service from any
    idiosyncrasies of the underlying implementation.

-   **SOAP Portability:** for the same reasons, we built a SOAP
    abstraction for the Web Services transactions component.

-   **Object Transaction Service:** this is an implementation of the
    OMG\'s Object Transaction Service specification in Java, aka the
    Java Transaction Service.

-   **ArjunaCore:** this is the core of all of the various transaction
    service implementations.

-   **JDBC:** this module contains a wrapper for supported JDBC drivers
    and makes the wrapped whole transactional aware.

-   **JTA:** this module contains two JTA implementations - a purely
    local implementation, which wraps ArjunaCore and provides local JTA
    support, but no distributed transactions, and a version which wraps
    the JTS to provide distributed JTA transactions.

-   **Transactional Objects:** this is a set of classes for constructing
    transactional applications from POJOs. It has been in use for about
    20 years (originally in C++).

-   **WS-T:** the Web Services transactions support, compliant with the
    specifications from the OASIS WS-TX technical committee.

Published papers
----------------

[A description of the evolution of Arjuna from academic project to
commercial
product.](https://downloads.jboss.org/jbosstm/dms/jbosstm/resources/papers/ArjunaWeiss.pdf)
A version of this was published in the USENIX Workshop on Industrial
Experiences with Systems Software, Boston, MA, USA, 8 December 2002.
[For a more recent paper examining the evolution of the Arjuna
Transaction Processing System, see the paper published in Springer
Lecture Notes in Computer Science (LNCS) 6875, pp. 323--343,
2011](https://downloads.jboss.org/jbosstm/dms/jbosstm/resources/papers/ArjunaEvolution.pdf)

[The evolution of a transaction processing
system.](https://downloads.jboss.org/jbosstm/dms/jbosstm/resources/papers/HPTS2005.pdf)
Presented at the High Performance Transaction Systems workshop, 2005.

Architecture documents
----------------------

[The architecture of
ArjunaCore.](https://downloads.jboss.org/jbosstm/dms/jbosstm/resources/reports/Architecture-of-ArjunaCore.pdf)
Hewlett-Packard, 2001.

[Differences between OTS 1.1 and OTS
1.2.](https://downloads.jboss.org/jbosstm/dms/jbosstm/resources/reports/OTS_1.2.pdf)
Hewlett-Packard, 2001.