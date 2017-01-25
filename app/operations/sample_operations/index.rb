module Operations
  module SampleOperations
    class Index < Base
      def call
        Log.info 'Loading index'
      end

      def exports
        {
          form: SampleForm.new(Sample.new)
        }
      end
    end
  end
end
