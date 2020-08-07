# Write in this file customization code that will get executed before
# autoproj is loaded.

# Set the path to 'make'
# Autobuild.commands['make'] = '/path/to/ccmake'

# Set the parallel build level (defaults to the number of CPUs)
# Autobuild.parallel_build_level = 10

# Uncomment to initialize the environment variables to default values. This is
# useful to ensure that the build is completely self-contained, but leads to
# miss external dependencies installed in non-standard locations.
#
# set_initial_env
#
# Additionally, you can set up your own custom environment with calls to env_add
# and env_set:
#
# env_add 'PATH', "/path/to/my/tool"
# env_set 'CMAKE_PREFIX_PATH', "/opt/boost;/opt/xerces"
# env_set 'CMAKE_INSTALL_PATH', "/opt/orocos"
#
# NOTE: Variables set like this are exported in the generated 'env.sh' script.
#

Autoproj.config.set('GITORIOUS', 'ssh', true)
Autoproj.config.set('GITHUB', 'ssh', true)

require 'autoproj/gitorious'
Autoproj.gitorious_server_configuration('GITORIOUS', 'gitorious.org')
Autoproj.gitorious_server_configuration('GITHUB', 'github.com', :http_url => 'https://github.com')

Autoproj.env_inherit 'CMAKE_PREFIX_PATH'
Autoproj.env_set 'TYPELIB_CXX_LOADER', 'castxml'

Autoproj.config.set('ROCK_SELECTED_FLAVOR', 'master', true)
Autoproj.config.set('ROCK_FLAVOR', 'master', true)
Autoproj.config.set('ROCK_BRANCH', 'master', true)
Autoproj.config.set('USE_OCL', false, true)
Autoproj.config.set('rtt_corba_implementation', 'omniorb', true)
Autoproj.config.set('rtt_target', 'gnulinux', true)
Autoproj.config.set('osdeps_mode', 'all', true)
