# == Class: cloudera::cdh::oozie::mysql
#
# This class handles using an external MySQL database for Oozie.
#
# === Parameters:
#
# === Actions:
#
# === Requires:
#
# === Sample Usage:
#
#   class { 'cloudera::cdh::oozie::mysql': }
#
# === Authors:
#
# Mike Arnold <mike@razorsedge.org>
#
# === Copyright:
#
# Copyright (C) 2013 Mike Arnold, unless otherwise noted.
#
class cloudera::cdh::oozie::mysql {
  include mysql::java

  file { '/usr/lib/oozie/libext/mysql-connector-java.jar':
    ensure => link,
    target => '/usr/share/java/mysql-connector-java.jar',
  }
}
