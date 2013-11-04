class BookItInitializerGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../initializer', __FILE__)

  def generate_datetime_initializer
    copy_file "datetime.rb", "config/initializers/datetime.rb"
  end
  
end
