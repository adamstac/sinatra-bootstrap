desc 'Generate a new project at dir=foo'
task :generate do
  # Generate the new 'dir' if it's not already created
  system "mkdir #{(ENV['dir'])}" unless File.exists?(ENV['dir'])
  
  # Archive the current HEAD to 'dir'
  system "git archive HEAD | (cd #{ENV['dir']} && tar -xvf -)"
  
  # Remove this rake task from the newly generated project
  system "cd #{ENV['dir']}; rm #{File.join("tasks", "generate.rake")}"

  puts "\n *** A new project has been generated at: #{(ENV['dir'])} ***"
end
