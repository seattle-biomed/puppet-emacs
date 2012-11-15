# == Class: emacs
#
# Manage emacs installation, including supporting packages.
#
# Currently only supports Ubuntu, tested only on 12.04.
#
# === Parameters
#
#
# === Variables
#
#
# === Examples
#
#  include emacs
#
# === Authors
#
# Andrew Leonard
#
# === Copyright
#
# Copyright 2012 Andrew Leonard, Seattle Biomedical Research Institute
#
class emacs {

  $pkgs = [ 'emacs23-nox', 'puppet-el', 'yaml-mode' ]

  package { $pkgs: ensure => present }

}
