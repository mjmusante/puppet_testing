class profile::ssh_server {
    package { 'openssh-server':
        ensure => present,
    }
    service { 'sshd':
        ensure => 'running',
        enable => 'true',
    }
    ssh_authorized_key { 'root@master.puppet.vm':
        ensure => present,
        user => 'root',
        type => 'ssh-rsa',
        key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQChIeCHPit9zGn+llr0RAbg3ocSODz0ujhUPcPukZRvMZ+K8cvoctwWY2L3RwKjSY5Rd7goYgS1aIn49HIBk+IPpamraAtMofSvCn3VG4fmqDT7wOEAT2wiboWibHRiAESRpGLpME1zR52crLu5w1JK/4eAGW4FRDUB1N7HNGbsa1Hnp9wbbCWp6MvhZKhFd3Zf2mACreEdJZD5Eb1i7q43EXZaaBh5QHslhrTpBXIzuVieX0x/Rq8VjRZLfOnMEwHwH7O0Xd7HTn4LYcR5AEhWKNsLmdvNheReQQoDa+zwI8cPUBPMfJYEyzySuAPC04+sPAPr8pCOY26dCY4h5TVB',
    }
}
