# frozen_string_literal: true

require 'action_view'
require 'action_pack'
require 'tailwind_form_components/helpers/form_helper'
require 'tailwind_form_components/engine'

module TailwindFormComponents
  extend ActiveSupport::Autoload

  autoload :FormBuilder, 'tailwind_form_components/form_builder.rb'
end
