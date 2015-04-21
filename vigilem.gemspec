# -*- encoding: utf-8 -*-
require './lib/vigilem/version'

Gem::Specification.new do |s|
  s.name                      = 'vigilem'
  s.version                   = Vigilem::VERSION
  s.required_rubygems_version = '> 2.0.14' if s.respond_to? :required_rubygems_version=
  s.authors                   = ['jtzero511']
  s.email                     = ['jtzero511@gmail.com']
  s.platform                  = Gem::Platform::RUBY
  s.summary                   = 'A cross platform device (currently just keyboard) DOM watcher, that converts native events to W3C DOM events'
  s.description               = 'A cross platform device (currently just keyboard) DOM watcher, that converts native events to W3C DOM events'
  s.homepage                  = 'http://rubygems.org/gems/vigilem'
  s.license                   = 'MIT'
  
  s.extensions                = ['ext/Rakefile']
  
  s.add_dependency 'vigilem-assembly'
  
  s.add_development_dependency 'bundler', '~> 1.7'
  s.add_development_dependency 'rake', '~> 10.0'
  s.add_development_dependency 'rspec', '~> 3.0'
  
  
  s.files         = Dir['{lib,spec,ext,test,features,bin}/**/**'] + ['LICENSE.txt']
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ['lib']
end
