# frozen_string_literal: true

Gem::Specification.new do |s|
  s.required_ruby_version = '>= 2.7'
  s.name              = 'resque-lock'
  s.version           = '1.1.0'
  s.date              = Time.now.strftime('%Y-%m-%d')
  s.summary           = 'A Resque plugin for ensuring only one instance of your job is queued at a time.'
  s.homepage          = 'http://github.com/defunkt/resque-lock'
  s.email             = 'chris@ozmm.org'
  s.authors           = ['Chris Wanstrath', 'Ray Krueger']
  s.has_rdoc          = false

  s.files             = %w[README.md Rakefile LICENSE]
  s.files            += Dir.glob('lib/**/*')
  s.files            += Dir.glob('test/**/*')

  s.description       = <<~DESC
    A Resque plugin. If you want only one instance of your job
    queued at a time, extend it with this module.

    For example:

        class UpdateNetworkGraph
          extend Resque::Jobs::Locked

          def self.perform(repo_id)
            heavy_lifting
          end
        end
  DESC

  s.add_development_dependency 'rubocop', '~> 1.41.1'
end
