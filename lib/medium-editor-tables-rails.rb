require 'rails'
require 'medium-editor-tables-rails/version'

module MediumEditorTablesRails
  module Rails
    if ::Rails.version.to_s < '3.1'
      require 'medium-editor-tables-rails/railtie'
    else
      require 'medium-editor-tables-rails/engine'
    end
  end
end
