module FormComponent
  class FormBuilder < ActionView::Helpers::FormBuilder
    def initialize(*)
      super
    end

    def input(attribute_name, options = {}, &block)
      FormComponent::TextFieldComponent.new(
        attribute_name,
        @object_name, 
        @object,
        options, &block
      ).call
    end

  end
end