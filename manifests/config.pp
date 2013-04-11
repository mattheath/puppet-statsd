# Public: Configures statsd runtime and its backend (currently graphite)
#
# Examples
#
#   include statsd::config

class statsd::config {
  require boxen::config

  $configdir  = "${boxen::config::configdir}/statsd"
  $configfile = "${configdir}/config.js"
  $port       = '8125'
  $libdir     = "${boxen::config::datadir}/statsd"
  $logdir     = "${boxen::config::logdir}/statsd"
  $executable = "${libdir}/bin/statsd"
}
