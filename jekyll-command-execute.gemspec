# coding: utf-8
# frozen_string_literal: true
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "jekyll-command-execute"
  spec.version       = "0.1.0"
  spec.authors       = ["zam0x1ma"]  
  spec.summary       = "A Liquid plugin for Jekyll."  
  spec.homepage      = "https://github.com/zam0x1ma/jekyll-command-execute"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.0.0"

  spec.files         = `git ls-files -z`.split("\x0")  
  spec.require_paths = ["lib"]

  spec.add_development_dependency "jekyll", ">= 3.6.3"
  spec.add_development_dependency "bundler", ">= 2.2.10"
end
