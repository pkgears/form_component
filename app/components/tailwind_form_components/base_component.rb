require 'view_component'
module ::TailwindFormComponents
  class BaseComponent < ViewComponent::Base

    def call
      "<h1>Hola</h1>"
    end
  end
end