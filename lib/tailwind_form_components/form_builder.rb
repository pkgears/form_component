module TailwindFormComponents
  class FormBuilder < ActionView::Helpers::FormBuilder
    attr_reader :component, :object_name, :object

    def initialize(*)
      super
    end

  end
end