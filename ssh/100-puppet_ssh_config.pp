file { '/home/kellia/.ssh/config':
  ensure  => file,
  owner   => 'kellia',
  group   => 'kellia',
  mode    => '0600',
}

file_line { 'Declare identity file':
  path  => '/home/kellia/.ssh/config',
  line  => '    IdentityFile ~/.ssh/school',
  match => '^\\s*IdentityFile\\s+',
}

file_line { 'Turn off passwd auth':
  path  => '/home/kellia/.ssh/config',
  line  => '    PasswordAuthentication no',
  match => '^\\s*PasswordAuthentication\\s+',
}

file_line { 'Add Host wildcard':
  path  => '/home/kellia/.ssh/config',
  line  => 'Host *',
  match => '^Host \\*',
}

