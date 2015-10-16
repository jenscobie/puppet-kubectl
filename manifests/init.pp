# Install kubectl command line utility
#
# Usage:
#
#   include kubectl
#

class kubectl {

  $download_url = 'https://storage.googleapis.com/kubernetes-release/release/v1.0.1/bin/darwin/amd64/kubectl'

  exec { 'download kubectl':
    command => "wget -q --timestamping -P ${boxen::config::bindir} $download_url",
    creates => "${boxen::config::bindir}/kubectl",
  }
}
