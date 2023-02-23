# desc "Print reminder about eating more fruit."

task :apple do
  puts "Eat more apples!"
end

# rake apple

# ******************************

namespace :backup do
  task :create do
    puts "namespace task"
  end
  task :list do
    puts "namespace task"
  end
  task :restore do
    puts "namespace task"
  end
end

# rake backup:create
