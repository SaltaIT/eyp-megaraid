# megaraid

#### Table of Contents

1. [Overview](#overview)
2. [Module Description](#module-description)
3. [Setup](#setup)
    * [What megaraid affects](#what-megaraid-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with megaraid](#beginning-with-megaraid)
4. [Usage](#usage)
5. [Reference](#reference)
5. [Limitations](#limitations)
6. [Development](#development)

## Overview

A one-maybe-two sentence summary of what the module does/what problem it solves.
This is your 30 second elevator pitch for your module. Consider including
OS/Puppet version it works with.

## Module Description

```
# rpm -qi MegaCli
Name        : MegaCli                      Relocations: (not relocatable)
Version     : 8.07.14                           Vendor: LSI Logic Corporation
Release     : 1                             Build Date: Mon 16 Dec 2013 11:43:54 AM CET
Install Date: Tue 26 Jan 2016 10:24:34 AM CET      Build Host: dhcp-135-24-228-179.lsi.com
Group       : RAID                          Source RPM: MegaCli-8.07.14-1.src.rpm
Size        : 5730524                          License: LSI Logic Corporation
Signature   : (none)
Packager    : Bhavna Patel
URL         : http://www.lsil.com
Summary     : MegaCli SAS RAID Management Utility.
Description :
MegaCli is used to manage SAS RAID controllers.
```

## Setup

### What megaraid affects

* A list of files, packages, services, or operations that the module will alter,
  impact, or execute on the system it's installed on.
* This is a great place to stick any warnings.
* Can be in list or paragraph form.

### Setup Requirements **OPTIONAL**

If your module requires anything extra before setting up (pluginsync enabled,
etc.), mention it here.

### Beginning with megaraid

The very basic steps needed for a user to get the module up and running.

If your most recent release breaks compatibility or requires particular steps
for upgrading, you may wish to include an additional section here: Upgrading
(For an example, see http://forge.puppetlabs.com/puppetlabs/firewall).

## Usage

Put the classes, types, and resources for customizing, configuring, and doing
the fancy stuff with your module here.

## Reference

Here, list the classes, types, providers, facts, etc contained in your module.
This section should include all of the under-the-hood workings of your module so
people know what the module is touching on their system but don't need to mess
with things. (We are working on automating this section!)

## Limitations

This is where you list OS compatibility, version compatibility, etc.

## Development

We are pushing to have acceptance testing in place, so any new feature should
have some test to check both presence and absence of any feature
