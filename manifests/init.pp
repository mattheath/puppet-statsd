# Public: Installs statsd via npm, configures for graphite backend
#
# Examples
#
#   include statsd
class statsd {
  include statsd::service
  include statsd::config
  include nvm
  include nodejs::0-8

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
