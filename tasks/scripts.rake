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
    
    desc "Watch the scripts and join and compile changes"
    task :join => :clear do
      puts "*** Compiling scripts ***"
      system "coffee -j public/javascripts/application.js -cw views/javascripts/*.coffee"
    end
    
    desc "Watch the scripts and compile changes without closures"
    task :bare => :clear do
      system "coffee -o public/javascripts/ -cbw views/javascripts/"
    end
    
    desc "Watch the scripts and join and compile changes without closures"
    task :barejoin => :clear do
      system "coffee -j public/javascripts/application.js -cbw views/javascripts/*.coffee"
    end
    
    desc "Watch the scripts and join and compile changes without closures"
    task :joinbare => ["compile:barejoin"]
  end
  
  namespace :compile do
    task :default => :clear do
      puts "*** Compiling scripts ***"
      system "coffee -o public/javascripts/ -c views/javascripts/*.coffee"
    end
    
    desc "Join and compile the scripts"
    task :join => :clear do
      puts "*** Compiling scripts ***"
      system "coffee -j public/javascripts/application.js -c views/javascripts/*.coffee"
    end
    
    desc "Compile the scripts without closures"
    task :bare => :clear do
      puts "*** Compiling scripts ***"
      system "coffee -o public/javascripts/ -cb views/javascripts/*.coffee"
    end
    
    desc "Join and compile the scripts without closures"
    task :barejoin => :clear do
      puts "*** Compiling scripts ***"
      system "coffee -j public/javascripts/application.js -cb views/javascripts/*.coffee"
    end
    
    desc "Join and compile the scripts without closures"
    task :joinbare => ["compile:barejoin"]
  end
end
