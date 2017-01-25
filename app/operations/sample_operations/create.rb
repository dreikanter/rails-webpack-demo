module Operations
  module SampleOperations
    class Create < Base
      def call
        Log.info 'Creating a new sample'

        @form = SampleForm.new(Sample.new)
        return unless @form.validate(form_params)

        @form.save do |hash|
          Sample.create!(title: hash['title'])
        end
      end

      def exports
        {
          form: @form
        }
      end

      private

      def form_params
        params.require(:sample)
      end
    end
  end
end
