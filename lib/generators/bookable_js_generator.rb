class BookitJsGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates/assets/javascript', __FILE__)

  argument :views_name, :type => :string, :default => "resources"

  def generate_js
    template "custom.js", "app/assets/javascripts/custom.js"
    template "fullcalendar.js", "app/assets/javascripts/fullcalendar.js"
    template "calendar-editable.js", "app/assets/javascripts/calendar-editable.js"
  end

  private

    def folder_name
      views_name.underscore
    end
end