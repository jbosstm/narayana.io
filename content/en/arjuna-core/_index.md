---
title : "What is ArjunaCore?"
description: "Narayana's documentation"
lead: ""
date: 2020-10-06T08:48:45+00:00
lastmod: 2020-10-06T08:48:45+00:00
draft: false
images: []
layout: documentation
weight: 100
---
ArjunaCore is a stand-alone transaction engine and associated toolkit
for the construction of fault-tolerant applications using objects and
(nested) atomic transactions. It forms the core component of several
different HP products, including HP-TS, HP-WST and HP-MS and their
Arjuna Technologies equivalents (ATS, AWST, AMS and the new AXTS.)

Atomic transactions (transactions) are used in application programs to
control the manipulation of persistent (long-lived) objects.
Transactions have the following ACID properties:

-   Atomic: if interrupted by failure, all effects are undone (rolled
    back).

-   Consistent: the effects of a transaction preserve invariant
    properties.

-   Isolated: a transaction\'s intermediate states are not visible to
    other transactions. Transactions appear to execute serially, even if
    they are performed concurrently.

-   Durable: the effects of a completed transaction are persistent; they
    are never lost (except in a catastrophic failure).

At the heart of every transaction processing system is a transaction
manager (also known as a transaction coordinator). It is the transaction
manager that is responsible for ensuring the atomicity and durability
properties of the transactions under its control. The isolation and
consistency are provided by transactional resources that participate in
the transaction on behalf of applications and services. The coordinator
must maintain a transaction log in case of failures and a recovery
system to use this log to complete transactions that were in flight and
caught by any failures (e.g., a machine or process crash). It is
important to realize that this functionality if required by all
transaction systems, whether or not they support distributed
transactions.

ArjunaCore provides this exact functionality in a highly optimized,
configurable and extensible manner. It has an extremely small footprint
(easily executable on mobile devices, for example) and deliberately
knows nothing about distribution: it is concerned only with local (same
process) transactions. However, importantly it has sufficient hooks to
enable the transactions it creates to be distributed in a manner which
makes sense for the environment in which it operates, e.g., CORBA IIOP
or SOAP/XML.

What does it offer?
-------------------

ArjunaCore offers the following features:

-   Multi-threaded: transactions can have many threads operating within
    them concurrently.

-   Nested transactions: transactions may be nested within one another.
    This allows for improved fault-tolerance the failure of a nested
    transaction does not automatically undo the work of the parent
    transaction) and modularity (nesting is transparent to applications,
    such that an object that requires transaction support can be
    constructed without a requirement that it must be invoked within a
    transaction - if it is then it\'s own transactions will simply be
    nested within the invokers and if it is not then the transactions
    will be top-level).

-   Highly configurable: one of the key components to the performance of
    any transaction system is its log: the transaction log is used at
    many times during the lifetime of a transaction and the information
    it stores must be durable. Thus, disk I/O is a typical bottleneck to
    any transaction system. However, the usage patterns for transactions
    can also affect the log such that different log implementations
    perform better for different applications. Therefore, rather than
    provide a single log implementation, ArjunaCore allows different
    implementations to be plugged in at runtime to best suite the
    application requirements.

-   Relaxation of properties across the ACID matrix: all of the ACID
    properties can be relaxed in a controlled manner. So, for example,
    the atomic nature of a traditional transaction can be modified to
    support OASIS BTP cohesive transactions. Furthermore, this means
    that the same transaction coordinator can be used to support many
    different transaction models. ArjunaCore provides the necessary
    support for BTP, but can also be used to support the various WS-CAF
    (or WS-T) transaction models.

-   Optimised and performant: ArjunaCore has been developed in one form
    or another for over 15 years. In that time, it has been tuned and
    optimised to improve its performance.

-   Adaptable failure recovery: arbitrary transactional resources can be
    enlisted with ArjunaCore transactions and recovery mechanisms can be
    provided that will be automatically driven by the failure recovery
    sub-system.

Note, it is important to realize that ArjunaCore does not require any
other software in order to run. It is a complete 100% pure Java
implementation of a transaction system and does not require an ORB or
application server in order to provide any of its functionality,
including Transactional Objects for Java.

Transactional Objects for Java
------------------------------

In addition to the transaction engine, ArjunaCore provides a complete
toolkit for the development of fault-tolerant applications using objects
and transactions. The toolkit (Transactional Objects for Java) is
similar to EJB, but has been around for as long as ArjunaCore. It also
provides nested transaction support (including nested transaction aware
resources), type specific concurrency control and does not have many of
the restrictions of EJB.

Transactional Objects for Java exploits object-oriented techniques to
present programmers with a toolkit of Java classes from which
application classes can inherit to obtain desired properties, such as
persistence and concurrency control. These classes form a hierarchy,
part of which is shown below.

![](/transactional-objects-for-java-diagram.gif)

Apart from specifying the scopes of transactions, and setting
appropriate locks within objects, the application programmer does not
have any other responsibilities: Transactional Objects for Java (TXOJ)
guarantee that transactional objects will be registered with, and be
driven by, the appropriate transactions, and crash recovery mechanisms
are invoked automatically in the event of failures.