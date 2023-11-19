#!/usr/bin/env bash
# This script configures the SSH client to use the private key at ~/.ssh/school

class ssh_config {

  file { '/etc/ssh/ssh_config':
    ensure => file,
  }

  file_line { 'Declare identity file':
    path    => '/etc/ssh/ssh_config',
    line    => 'IdentityFile ~/.ssh/schooli',
    match   => '^IdentityFile',
    replace => true,
  }

  file_line { 'Turn off passwd auth':
    path    => '/etc/ssh/ssh_config',
    line    => 'PasswordAuthentication no',
    match   => '^PasswordAuthentication',
    replace => true,
  }
}

include ssh_config
