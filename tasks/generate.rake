desc 'Generate a new project at dir=foo'
task :generate do
  # Create the new directory
  system "mkdir #{(ENV['dir'])}" # unless File.exists?(ENV['dir'])

  # Copy this directory's contents to the new directory
  system "cp -R * #{ENV['dir']}"

  # Remove waste from the generated project
  system "cd #{ENV['dir']}; rm -Rf .bundle .git .sass-cache #{File.join("tasks", "generate.rake")} Gemfile.lock readme.md"

  # Add the readme back
  system "cd #{ENV['dir']}; touch readme.md"

  # Success!
  puts "A copy of this project has been generated at: #{(ENV['dir'])}"
end
