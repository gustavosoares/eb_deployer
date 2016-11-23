#!/usr/bin/env rake
require "bundler/gem_tasks"
require 'rake/testtask'
require 'single_test/tasks'

Rake::TestTask.new do |t|
  t.libs << "test"
  t.libs << "lib"
  t.test_files = FileList['test/*test.rb']
  t.verbose = true
end

task :default => :test
