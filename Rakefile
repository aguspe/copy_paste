# frozen_string_literal: true

require "bundler/gem_tasks"
require "rake/testtask"
require_relative 'lib/copy_paste'

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.libs << "lib"
  t.test_files = FileList["test/**/test_*.rb"]
end

desc 'Copy files a certain amount'
task :copy_files, [:amount, :path, :output] do |_t, args|
  args.with_defaults(path: '/Users/apeque01/Desktop/main_folder/Projects/Work/kvik_automation/cypress/lighthouse/productPageSpec.cy.ts',
                     output: '/Users/apeque01/Desktop/main_folder/Projects/Work/kvik_automation/cypress/e2e')
  CopyPaste.generate_files(args.amount, args.path, args.output)
end
