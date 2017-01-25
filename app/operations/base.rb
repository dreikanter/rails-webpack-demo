module Operations
  class Base
    def self.call(params = {})
      operation = new(params)
      [operation.call, operation.exports]
    end

    attr_reader :params

    def initialize(params)
      @params = params
    end

    def call
      raise NotImplementedError
    end

    def exports
      @exports ||= {}
    end

    protected

    def export(key, value)
      exports[key.to_sym] = value
    end
  end
end
