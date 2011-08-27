# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "raptcha/version"

Gem::Specification.new do |s|
  s.name        = "raptcha"
  s.version     = Raptcha::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Mikel Lindsaar", "Glenn Davy"]
  s.email       = ["mikel@rubyx.com","glenn.davy@rubyx.com"]
  s.homepage    = ""
  s.summary     = %q{Currently a very simple gem which provides Q&A style captcha facility for an active record model}
  s.description = %q{Rapturiously simply Q&A style capture for AR models}

  s.rubyforge_project = "raptcha"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
