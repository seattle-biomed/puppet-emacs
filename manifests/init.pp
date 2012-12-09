# == Class: emacs
#
# Manage emacs installation, including supporting packages.
#
# Currently only supports Ubuntu (tested on 12.04) and SmartOS (tested on
# 1.8.4)
#
# === Parameters
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
class emacs inherits emacs::params {

  package { $emacs::params::pkgs:
    ensure   => present,
    provider => $emacs::params::provider,
  }

}
