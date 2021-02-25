task :test do
  system 'gem build trigger.gemspec'
  gemfile = Dir['*.gem'][0]
  system "gem install #{gemfile}"
  File.delete gemfile
end
