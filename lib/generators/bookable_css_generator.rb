class BookitCssGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates/assets/stylesheets', __FILE__)

  argument :views_name, :type => :string, :default => "resources"

  def generate_css
    template "custom.css", "app/assets/stylesheets/custom.css"
    template "fullcalendar.css", "app/assets/stylesheets/fullcalendar.css"
  end

  private

    def folder_name
      views_name.underscore
    end
end