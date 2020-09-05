module FormComponent
  module Helpers
    module FormHelper
      
      def form_component_for(record, options = {}, &block)
        options[:builder] ||= FormComponent::FormBuilder
        options[:html] ||= {}
        form_for(record, options, &block)
      end
  
      def form_component_fields_for(record_name, record_object = nil, options = {}, &block)
        options, record_object = record_object, nil if record_object.is_a?(Hash) && record_object.extractable_options?
        options[:builder] ||= SimpleForm::FormBuilder
  
        fields_for(record_name, record_object, options, &block)
      end
  
    end
  end
end

ActiveSupport.on_load(:action_view) do
  include FormComponent::Helpers::FormHelper
end