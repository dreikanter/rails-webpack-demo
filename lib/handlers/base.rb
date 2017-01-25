module Handlers
  class Base
    def self.call(event, payload = {})
      Log.debug "event: #{event}; handle: #{self.name}; payload: #{payload}"
      new.call(event, payload)
      Log.debug "event handler exited"
    end
  end
end
