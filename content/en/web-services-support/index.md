---
title : "Web services support"
description: "Narayana's documentation"
lead: ""
date: 2020-10-06T08:48:45+00:00
lastmod: 2020-10-06T08:48:45+00:00
draft: false
images: []
layout: documentation
weight: 100
---
> Developers and IT organizations won\'t implement any important Web
services without being able to guarantee that they will be executed in a
guaranteed manner. \-- Ronald Schmelzer, ZapThink

In traditional ACID transaction systems, transactions are short lived,
resources (such as databases) are locked for the duration of the
transaction and participants have a high degree of trust with each
other. With the advent of the Internet and Web services, the scenario
that is now emerging requires involvement of participants unknown to
each other in distributed transactions. These transactions have the
following characteristics:

-   Transactions may be of a long duration, sometimes lasting hours,
    days, or more.
-   Participants may not allow their resources to be locked for long
    durations.
-   The communication infrastructure between participants may not be
    reliable.
-   Some of the ACID properties of traditional transactions are not
    mandatory.
-   A transaction may succeed even if only some of the participants
    choose to confirm and others cancel.
-   All participants may choose to have their own coordinator
    (Transaction Manager), because of lack of trust.
-   All activities are logged.
-   Transactions that have to be rolled back have the concept of
    compensation.

How does Narayana address these issues?
---------------------------------------

Building on the industry proven J2EE transaction technology, version 4.0
adds native support for Web services transactions by providing all of
the components necessary to build interoperable, reliable, multi-party,
Web services-based applications with the minimum of effort. The
programming interfaces are based on the Java API for XML Transactioning
(JAXTX) and the product includes protocol support for the
WS-AtomicTransaction and WS-BusinessActivity specifications. JBossTS 4.2
is designed to support multiple coordination protocols and therefore
helps to future-proof transactional applications.

