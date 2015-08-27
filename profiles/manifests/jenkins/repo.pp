class profiles::jenkins::repo {
	yumrepo {'jenkins':
		descr    => 'Jenkins',
		baseurl  => 'http://pkg.jenkins-ci.org/redhat/',
		gpgcheck => 1,
		gpgkey   => 'http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key',
		enabled  => 1,
	}
}
