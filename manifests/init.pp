# Install kubectl command line utility
#
# Usage:
#
#   include kubectl
#

class kubectl {

  $download_uri = 'https://storage.googleapis.com/kubernetes-release/release/v1.0.1/bin/darwin/amd64/kubectl'

  exec { 'download kubectl':
    command => "curl -s -L ${download_uri} -o ${boxen::config::bindir}/kubectl",
    creates => "${boxen::config::bindir}/kubectl",
  } ->
  file { "${boxen::config::bindir}/kubectl":
    mode   => '0111',
  }
}
