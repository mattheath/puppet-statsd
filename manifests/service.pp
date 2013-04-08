class statsd::service {
  service { 'statsd':
    ensure    => 'running',
  }
}
