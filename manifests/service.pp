# Public: Setup statsd service on system
#
# Examples
#
#   include statsd::service
class statsd::service {
  service { 'statsd':
    ensure    => 'running',
  }
}
