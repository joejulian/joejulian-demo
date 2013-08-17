require 'bundler'
require 'rake/clean'
require 'puppetlabs_spec_helper/rake_tasks'

Bundler.require(:rake)

CLEAN.include('spec/fixtures/modules/apache/', 
              'spec/fixtures/modules/concat/',
              'spec/fixtures/modules/openssh/',
              'spec/fixtures/modules/stdlib/',
              'spec/fixtures/Puppetfile.lock',
              'spec/fixtures/.tmp',
              'spec/fixtures/.librarian')

task :librarian_spec_prep do
  Dir.chdir('spec/fixtures') do
    sh "librarian-puppet install"
  end
end
task :spec_prep => :librarian_spec_prep

task :default => [:spec]
