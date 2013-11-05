class ResourceModelGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates/modesl', __FILE__)
  argument :resource_name, :type => :string, :default => "resource"

  def generate_resource_model
    copy_file "resource.rb", "app/models/#{resource_name}.rb"
  end

  def create_resource_migration
    create_file "db/migrate/#{Time.now.strftime('%Y%l%M%S%w%y')}_create_#{resource_name.pluralize}.rb", migration
  end

  private

  def migration
    "class Create#{resource_name.pluralize.capitalize} < ActiveRecord::Migration\n"\
      "\tdef change\n"\
        "\t\tcreate_table :#{resource_name.pluralize} do |t|\n"\
          "\t\t\tt.string :name\n"\
          "\t\t\tt.timestamps\n"\
        "\t\tend\n"\
      "\tend\n"\
    "end"
  end
  
end

