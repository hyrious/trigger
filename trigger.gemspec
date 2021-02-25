# frozen_string_literal: true

require_relative "lib/trigger"

Gem::Specification.new do |spec|
  spec.name = "trigger"
  spec.version = Trigger::VERSION
  spec.summary = "Dead simple task manager written in pure ruby"
  spec.description = <<~DESC
    Manage tasks (like shell commands) in background.
    This tool is made to ease my daily work.
  DESC
  spec.authors = ["hyrious"]
  spec.email = ["hyrious@outlook.com"]
  spec.license = "MIT"
  spec.homepage = "https://github.com/hyrious/trigger"
  spec.files = Dir["lib/**/*.rb"]
  spec.executables = %w[trigger]
  spec.bindir = "exe"
  spec.required_ruby_version = ">= 3.0.0"
end
