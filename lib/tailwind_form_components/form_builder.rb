module TailwindFormComponents
  class FormBuilder < ActionView::Helpers::FormBuilder
    attr_reader :component, :object_name, :object

    def initialize(*)
      super
    end

    def input(attribute_name, options = {}, &block)
      TailwindFormComponents::BaseInputComponent.new.call
    end

  end
end