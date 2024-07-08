# frozen_string_literal: true

require 'rake/testtask'
require 'rdoc/task'

def command?(command)
  system("type #{command} > /dev/null")
end

#
# Tests
#

task default: :test

Rake::TestTask.new do |t|
  t.libs << 'lib'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = false
end
