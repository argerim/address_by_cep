# -*- encoding: utf-8 -*-
require File.expand_path("../lib/generators/address_by_cep/version", __FILE__)


Gem::Specification.new do |s|
  s.name        = "address_by_cep"
  s.version     = AddressByCep::VERSION
  s.authors     = ["Rogerio Medeiros"]
  s.email       = ["argerim@gmail.com"]
  s.homepage    = "https://github.com/argerim/address_by_cep"
  s.summary     = %q{Encontre seu endereço via cep}
  s.description = %q{É uma gem que gera um model address e partial para cadastro de endereço de forma polimórfica, fazendo uma busca de um endereço ao web service dado um cep.}

  s.rubyforge_project = "address_by_cep"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
  s.add_dependency('rails', '>= 3.0.0')

  s.add_development_dependency('sqlite3-ruby')
  s.add_development_dependency('shoulda')
  s.add_development_dependency('rspec')
  s.add_development_dependency('rspec-rails')
  s.add_development_dependency('cucumber')
  s.add_development_dependency('cucumber-rails')
end
