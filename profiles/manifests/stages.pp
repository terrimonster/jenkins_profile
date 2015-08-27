class profiles::stages {
	stage { 'setup':
		before => Stage['main'],
	}
}
