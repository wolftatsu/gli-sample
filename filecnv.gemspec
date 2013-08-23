# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','filecnv','version.rb'])
spec = Gem::Specification.new do |s| 
  s.name = 'filecnv'
  s.version = Filecnv::VERSION
  s.author = 'Your Name Here'
  s.email = 'your@email.address.com'
  s.homepage = 'http://your.website.com'
  s.platform = Gem::Platform::RUBY
  s.summary = 'A description of your project'
# Add your other files here if you make them
  s.files = %w(
bin/filecnv
lib/filecnv/version.rb
lib/filecnv.rb
  )
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','filecnv.rdoc']
  s.rdoc_options << '--title' << 'filecnv' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'filecnv'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('aruba')
  s.add_runtime_dependency('gli','2.7.0')
end
