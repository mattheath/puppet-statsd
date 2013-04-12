# puppet-statsd

Puppet module for statsd configuration, designed for boxen

## Usage

Add to your boxen's module.

```
include statsd
```

This module uses a plist to setup the service. See [config.pp](manifests/config.pp) for config
settings of statsd.  This optionally loads graphite as the backend.


## Required Puppet Modules

* `boxen`
* `stdlib`
* `node` - Technically all you need is `which node` to resolve, I don't care which module.

## Development

Write code. Run `script/cibuild` to test it. Check the `script` directory for other useful tools.
