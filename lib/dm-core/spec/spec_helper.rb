require 'dm-core/spec/lib/pending_helpers'

require 'dm-core'
require 'dm-core/spec/setup'
require 'dm-core/spec/lib/adapter_helpers'
require 'dm-core/spec/shared/adapter_spec'

Spec::Runner.configure do |config|
  config.extend(DataMapper::Spec::Adapters::Helpers)
  config.include(DataMapper::Spec::PendingHelpers)
end