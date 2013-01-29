namespace :scripts do
  desc "Watch the scripts and compile new changes"
  task :watch => ["watch:default"]
  
  desc "List the scripts"
  task :list do
    system "ls -lh public/javascripts"
  end
  
  desc "Compile the scripts"
  task :compile => ["compile:default"]
  
  desc "Clear the scripts"
  task :clear do
    puts "*** Clearing scripts ***"
    system "rm -Rfv public/javascripts/*.js"
  end
  
  namespace :watch do
    task :default => :clear do
      system "coffee -o public/javascripts/ -cw views/javascripts/"
    end
    
    desc "Watch the scripts and compile new changes without closures"
    task :bare => :clear do
      system "coffee -o public/javascripts/ -cbw views/javascripts/"
    end
  end
  
  namespace :compile do
    task :default => :clear do
      puts "*** Compiling scripts ***"
      system "coffee -o public/javascripts/ -c views/javascripts/"
    end
    
    desc "Join and compile the scripts"
    task :join => :clear do
      puts "*** Compiling scripts ***"
      system "coffee -o public/javascripts/ -cj views/javascripts/"
    end
    
    desc "Join and compile the scripts without closures"
    task :bare => :clear do
      puts "*** Compiling scripts ***"
      system "coffee -o public/javascripts/ -cb views/javascripts/"
    end
  end
end
