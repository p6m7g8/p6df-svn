p6df::modules::svn::version() { echo "0.0.1" }
p6df::modules::svn::deps()    {
	ModuleDeps=(
		p6m7g8/p6svn
	)
}

p6df::modules::svn::external::brew() {

  brew install subversion
}

p6df::modules::svn::home::symlink() {
  
  # XXX: TBD
}

p6df::modules::svn::init() {

  alias s='svn'
  alias svni='svn --set-depth immediates'
  alias svna='svn --set-depth infinity'

  p6df::modules::svn::prompt
}

p6df::modules::svn::prompt() {

  add-zsh-hook precmd p6df::modules::svn::prompt_precmd
}

p6df::modules::svn::prompt_precmd() {
  p6df::modules::svn::vcs_info
}

p6df::modules::svn::vcs_info() {
  
}

p6df::prompt::svn::line() {

}
