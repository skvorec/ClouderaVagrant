# == Class: cloudera::cdh::bigtop
#
# This class installs the BigTop packages.
#
# === Parameters:
#
# === Actions:
#
# === Requires:
#
# === Sample Usage:
#
#   class { 'cloudera::cdh::bigtop': }
#
# === Authors:
#
# Mike Arnold <mike@razorsedge.org>
#
# === Copyright:
#
# Copyright (C) 2013 Mike Arnold, unless otherwise noted.
#
class cloudera::cdh::bigtop {
  package { 'bigtop-jsvc':
    ensure => 'present',
  }

  package { 'bigtop-tomcat':
    ensure => 'present',
  }

  package { 'bigtop-utils':
    ensure => 'present',
  }
}
