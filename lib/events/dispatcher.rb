module Events
  class Dispatcher
    def self.subscribe(event, handler)
      add_handler(event, handler)
    end

    def self.fire(event, payload = {})
      return if handlers[event].blank?
      handlers[event].each { |handler| handler.call(event, payload) }
    end

    def self.handlers
      @handlers ||= {}
    end

    def self.add_handler(event, handler)
      handlers[event] ||= []
      handlers[event] << handler
    end
  end
end
