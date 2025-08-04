# Puppet manifest to configure global SSH client settings in /etc/ssh/ssh_config
# It sets the identity file to ~/.ssh/school and disables password authentication

file_line { 'Add Host *':
  path  => '/etc/ssh/ssh_config',
  line  => 'Host *',
  match => '^Host \*',
}

file_line { 'Set IdentityFile':
  path  => '/etc/ssh/ssh_config',
  line  => '    IdentityFile ~/.ssh/school',
  match => '^\s*IdentityFile\s+',
}

file_line { 'Disable password authentication':
  path  => '/etc/ssh/ssh_config',
  line  => '    PasswordAuthentication no',
  match => '^\s*PasswordAuthentication\s+',
}

