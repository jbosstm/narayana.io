---
title : "Sub Projects"
description: "Narayana's documentation"
lead: ""
date: 2020-10-06T08:48:45+00:00
lastmod: 2020-10-06T08:48:45+00:00
draft: false
images: []
layout: documentation
weight: 100
---

Business Activity Framework
---------------------------

The Business Activity Framework is a fully novel comprehensive solution
for building transactional Web Services with accordance to the model
defined in the WS-BusinessActivity specification. It provides a
lightweight API that consists of a set of easy to learn and intuitive
annotations and operations. It significantly facilitates development of
transaction aware Web Services and releases programmers from mixing
transaction related code with business logic of their applications.

Web Services must be simply annotated with a set of defined annotations
and the framework transparently applies all necessary transactional
mechanisms to enable participation in long-running Business Activity
type extended transactions. Business Activity framework has been built
on top of the XTS (XML Transaction Service) component, which is a part
of the JBoss Transaction Service. It uses JBoss AOP framework to
transparently apply its mechanisms to Web Services.

### Features

  -------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  Separation of Concerns     All necessary transaction-related mechanisms are applied by the framework in a fully transparent way. Programmers do not need to concern themselves with any low-level details and do not need to mix transaction related code with business logic of their applications.
  Annotation-based API       The core API of the Business Activity Framework consists of a set of annotations. Developers do not need to write any additional code. Most annotations have intuitive and reasonable default values to release the developer from the necessity of specifying all required annotation member values explicitly.
  Flexible data management   Framework\'s API enables developers to remember arbitrarily custom data, which may be potentially used for completion or compensation. The Data Manager component additionally provides operations to store and retrieve data within the application logic.
  Flexible ex                Completion and compensation actions can be executed both locally and remotely using different mechanisms. The framework can dynamically invoke methods on POJOs and EJBs. Support for remote Web Services will be added shortly. Custom mechanisms can be easily used without any code changes as well.
  Portability                Implementation specific parts of the Business Activity Framework have been well separated and it is possible to port the code to use any other AOP framework.
  -------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Transactional File I/O
----------------------

The Transactional File I/O library provides an XA resource manager for
file system access, allowing file operations to participate fully in
transactions with databases or messaging systems.

### Features

  ------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  Easy to use API                 Read or write the contents of a file using standard Java APIs (DataInput, DataOutput) with transactional behaviour, including transparent lock handling and crash recovery.
  Enterprise integration          File manipulations can participate in transactions with other XA resource managers, such as databases or messaging systems. e.g. Read business data entries from file and update a database, then delete or update the file, with guaranteed consistency. Multiple transactions (threads) can operate on the file concurrently for additional performance.
  Multiple JVMs for scalability   Multiple JVMs can perform transactions on the same file concurrently and a transaction can span multiple JVMs.
  Directory Manipulations         Create, delete, rename or copy files transactionally. Ideal for installers or batch processes.
