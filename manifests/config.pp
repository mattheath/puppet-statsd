class statsd::config {
  $configdir  = "${boxen::config::configdir}/statsd"
  $configfile = "${configdir}/config.js"
  $port       = '8125'
}
