class profiles::jenkins {
	include stdlib

	$jenkins_config = {
		'JENKINS_JAVA_OPTIONS' => { 'value' => '-Djava.awt.headless=true -XX:MaxPermSize=512m' },
	}

	class { '::jenkins':
		repo        => false,
		config_hash => $jenkins_config
	}

	class { '::profiles::jenkins::repo':
		stage => 'setup',
	}
}
