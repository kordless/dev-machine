include 'docker'
include 'git'
include 'mercurial'
include 'vim'
include 'tmux'
include 'golang'

user { 'vagrant': 
	groups => ['docker'],
}