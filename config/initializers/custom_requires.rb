require 'digest/sha1'
require 'ferret_mixin'
require 'rand'

# In some cases autotest interprets the initialization of the UUID generator
# as something new, and so just keeps running the tests.
# This stub here fixes the problem.
unless test?
  require 'uuid'
else
  class UUID
    def self.new
      Time.now.to_f.to_s
    end
  end
end