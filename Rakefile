task :default => :bin

desc "Run bin/rpsls_main.rb"
task :bin do
  sh "ruby -Ilib bin/rpsls_main.rb"
end

desc "Run tests with --format documentation"
task :test do
  sh "rspec -Ilib rspec/rpsls_spec.rb --format documentation"
end

desc "Run tests with format: html"
task :thtml do
  sh "rspec rspec/rpsls_spec.rb --format html > rspec_results.html"
end
