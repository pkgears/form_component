module TailwindFormComponents
  module FormHelper
    
    def tailwind_form_for(record, options = {}, &block)
      options[:builder] ||= TailwindFormComponents::FormBuilder
      options[:html] ||= {}
    end

    def tailwind_fields_for(record_name, record_object = nil, options = {}, &block)
      options, record_object = record_object, nil if record_object.is_a?(Hash) && record_object.extractable_options?
      options[:builder] ||= SimpleForm::FormBuilder

      fields_for(record_name, record_object, options, &block)
    end

  end
end