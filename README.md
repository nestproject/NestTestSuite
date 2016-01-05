# Nest Test Suite

[![Build Status](http://img.shields.io/travis/nestproject/NestTestSuite/master.svg?style=flat)](https://travis-ci.org/nestproject/NestTestSuite)

This repository contains a set of shared tests for implementors of Nest servers
to test their implementation.

## Status

This test suite is incomplete and there are various improvements to be made.

### Usage

You can build the test runner with SPM:

```shell
$ swift build
```

Once you've built it, you will need to serve application inside
`Server/application.swift` from your HTTP server.

When you have the application running with your HTTP server, you can then run
the test suite as follows:

```shell
$ ./.build/debug/NestTestSuite --host http://localhost:8080 Features/*.feature
-> Basic Nest compliance
  -> Performing a simple GET request

  1 scenarios passed, 0 scenarios failed.
```
