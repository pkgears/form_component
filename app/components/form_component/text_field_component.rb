#fronze_string_literal: true

module ::FormComponent
  class TextFieldComponent < BaseInputComponent

    def initialize(*)
      super
      @template = wrapper{|input_options| text_field(input_options) }
    end

    private

    def text_field(method, options={})
      super(@object_name, @attribute_name, options)
    end

  end
end