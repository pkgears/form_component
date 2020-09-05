# frozen_string_literal: true

require 'action_view'
require 'action_pack'
require 'form_component/helpers/form_helper'
require 'form_component/engine'

module FormComponent
  extend ActiveSupport::Autoload

  autoload :FormBuilder, 'form_component/form_builder.rb'
end
