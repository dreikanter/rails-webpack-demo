module Operations
  module ControllerHelpers
    def execute(operation)
      safe_params = params if defined? params
      safe_params ||= {}
      result, @exports = operation.call(safe_params)
      result
    end
  end
end
