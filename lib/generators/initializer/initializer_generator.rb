class InitializerGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  def generate_datetime_initializer
    copy_file "datetime.rb", "config/initializers/datetime.rb"
  end
  
end
