module TailwindFormComponents
  module Helpers
    module FormHelper
      
      def tailwind_form_for(record, options = {}, &block)
        options[:builder] ||= TailwindFormComponents::FormBuilder
        options[:html] ||= {}
        form_for(record, options, &block)
      end
  
      def tailwind_fields_for(record_name, record_object = nil, options = {}, &block)
        options, record_object = record_object, nil if record_object.is_a?(Hash) && record_object.extractable_options?
        options[:builder] ||= SimpleForm::FormBuilder
  
        fields_for(record_name, record_object, options, &block)
      end
  
    end
  end
end

ActiveSupport.on_load(:action_view) do
  include TailwindFormComponents::Helpers::FormHelper
end