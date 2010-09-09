desc 'Start a new project (specify DIR)'
task :generate do
  puts "Invalid directory" unless File.exists?(ENV['DIR'])

  sh "git archive HEAD | (cd #{ENV['DIR']} && tar -xvf -)"
  
  # remove this rake task from the new project
  sh "cd #{ENV['DIR']}; rm #{File.join("tasks", "generate.rake")}"
end
