module TailwindFormComponents
  class FormBuilder < ActionView::Helpers::FormBuilder
    attr_reader :component, :object_name, :object

    def initialize(*)
      super
      @object   = convert_to_model(@object)
    end

  end
end