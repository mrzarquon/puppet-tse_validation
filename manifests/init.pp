class tse_validation (
  $nodes = '25',
  $to = 'Puppet Labs, TSE Team',
  $validfilefolder = '/etc/puppetlabs/',
) {
  $cil = 'lic'
  $esne = 'ense'
  $yek = 'key'
  $validfile = "${validfilefolder}/${cil}${esne}.${yek}"

  file { $validfile:
    ensure  => file,
    owner   => 'pe-puppet',
    group   => 'pe-puppet',
    mode    => '0644',
    content => template('tse_validation/validation.erb'),
  }


}
