# bro-modules
This is a set of Bro scripts, organized into importable modules, that can be used to augment an existing Bro deployment.

# How to Use This Repo
The modules are organized into directory based on the organization or group they intend to support.  Within an organization/group directory, individual modules will be contained within their own directory.  This way, you only import modules you intend to use and don't bloat your Bro deployement with scripts that contain functionality you don't intend to utilize.

If you're using SecurityOnion, the entire repo (or a subset of groups) can be cloned to /opt/bro/share/bro/policy.  If you're using Bro in a different setting, your path may be different.  You can technically clone a single module from within groups as well, but I don't recommend this from an folder hierarchy standpoint.

Importing a module is as simple appending the appropriate @load statement in local.bro.  This file is located at /opt/bro/share/bro/site/local.bro (but, again, may differ based on your deployment.)  Once you locate this file, the @load command will look something like this:

@load bro-modules/<group>/<module> (i.e. @load bro-modules/rcss-modules/example-module)

...assuming you clone the entire repo.  If you only clone a single group, omit the 'bro-modules' portion of the @load statement.
