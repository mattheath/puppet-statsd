# Public: Configures statsd runtime and its backend (currently graphite)
#
# Examples
#
#   include statsd::config

class statsd::config {
  $configdir  = "${boxen::config::configdir}/statsd"
  $configfile = "${configdir}/config.js"
  $port       = '8125'
}
