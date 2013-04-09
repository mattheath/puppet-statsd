# Public: Installs statsd via npm, configures for graphite backend
#
# Examples
#
#   include statsd
class statsd {
  include statsd::service
  include statsd::config

  file { $statsd::config::configdir:
    ensure => 'directory'
  }

  file { $statsd::config::configfile:
    content => template('statsd/config.js.erb')
  }

  package { 'statsd':
    ensure   => 'latest',
    provider => 'npm'
  }
}
