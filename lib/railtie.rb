require 'rails/railtie'

module BookIt

  class Railtie <  Rails::Railtie
    generators do
      require 'generators/resource_model.rb'
      require 'generators/booking_model.rb'
      require 'generators/bookit_controller.rb'
      require 'generators/views_generator.rb'
    end
  end

end