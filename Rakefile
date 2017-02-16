#!/usr/bin/env rake
Rake::TaskManager.record_task_metadata = true
Dir.glob('lib/tasks/*.rake').each { |r| load r }

require 'rubygems'
require 'bundler'

# Set default env
ENV['RACK_ENV'] ||= 'development'

# Setup load paths
Bundler.require


# Run before any rake tasks
desc 'Rake: run before all tasks'
task :before do
  `find . -name ".DS_Store" -print0 | xargs -0 rm -rf`
  `find . -name "._*" -print0 | xargs -0 rm -rf`
  system 'clear'
end

desc 'List all rake tasks'
task :default do
  puts 'Rake Tasks:'.green
  system 'rake -T'
end
task default: :before