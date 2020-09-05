require 'view_component'
require 'action_view'

module ::FormComponent
  class BaseInputComponent < ViewComponent::Base
    include ActionView::Helpers::Tags

    attr_reader :attribute_name, :object_name, :object, :template

    def initialize(attribute_name, object_name, object, options={})
      @attribute_name = attribute_name
      @object_name = object_name
      @object = object
      @options = options

      @template = wrapper{|input_options| text_field(input_options) }
    end

    def call()
      raw(@template)
    end

    private

    def wrapper(&block)
      label_text = @options.fetch(:label, @attribute_name.to_s.humanize)
      label_options = @options.fetch(:label_options, {})
      input_defaults = {class: "form-control"}
      input_options = merge_options(input_defaults, @options.fetch(:input_options, {}))

      content_tag :div, class: "form-group" do
        label(@object_name, @attribute_name, label_text, label_options) +
          yield(input_options)
      end
    end

    def text_field(options={})
      super(@object_name, @attribute_name, options)
    end

    def merge_options(defaults, new_options)
      (defaults.keys + new_options.keys).inject({}) {|h,key|
        h[key] = [defaults[key], new_options[key]].compact.join(" ")
        h
      }
    end

  end
end