# == Class: emacs::params
#
# Parameters class for emacs
#
# === Examples
#
# class emacs inherits emacs::params { }
#
# === Authors
#
# Andrew Leonard
#
# === Copyright
#
# Copyright 2012 Andrew Leonard
#
class emacs::params {

  case $::operatingsystem {
    solaris: {
      if $::kernelversion =~ /^joyent/ {
        $pkgs = [ 'emacs-nox11' ]
        $provider = 'pkgin'
      } else {
        fail("Module emacs is not supported on Solaris variant ${::kernelversion}")
      }
    }
    ubuntu: {
      $pkgs = [ 'emacs23-nox', 'puppet-el', 'yaml-mode' ]
      $provider = 'apt'
    }
    default: {
      fail("Module emacs is not supported on ${::operatingsystem}")
    }
  }
}
