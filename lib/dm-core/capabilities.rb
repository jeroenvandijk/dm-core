# TODO extend classes that inherit from AbstractAdapter automatically
module Capabilities
  
  def self.included(descendant)
    descendant.extend(ClassMethods)
  end
  
  module ClassMethods
    # Adapters capabilities
    # 
    # Declares or returns capabilities of this adapter
    # 
    # @api semipublic
    def capabilities(capabilities = nil)
      @capabilities ||= capabilities
    end
  end
  
  # @api private
  def capabilities
    self.class.capabilities
  end
end
