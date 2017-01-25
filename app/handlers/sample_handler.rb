module Handlers
  class SampleHandler < Base
    def call(event, payload)
      Log.info "Sample event fired"
    end
  end
end
