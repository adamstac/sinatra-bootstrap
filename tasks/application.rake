desc 'Start the application'
task :start do
  system "bundle exec shotgun config.ru"
end