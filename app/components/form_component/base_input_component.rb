require 'view_component'
require 'action_view'

module ::FormComponent
  class BaseInputComponent < ViewComponent::Base
    include ActionView::Helpers::Tags

    attr_reader :attribute_name, :object_name, :object

    def initialize(attribute_name, object_name, object, options={})
      @attribute_name = attribute_name
      @object_name = object_name
      @object = object
      @options = options
    end

    def call()
      text_field(@attribute_name, @options)
    end

    def text_field(method, options={})
      label_text = options.fetch(:label, method.to_s.humanize)
      label_options = options.fetch(:label_options, {})
      input_defaults = {class: "form-control"}
      input_options = merge_options(input_defaults, options.fetch(:input_options, {}))
    
      content_tag :div, class: "form-group" do
        label(@object_name, method, label_text, label_options) +
          super(method, input_options)
      end
    end

    def merge_options(defaults, new_options)
      (defaults.keys + new_options.keys).inject({}) {|h,key|
        h[key] = [defaults[key], new_options[key]].compact.join(" ")
        h
      }
    end

  end
end