require 'medium-editor/plugin/base'

module MediumEditor
  module Plugin
    class Tables < ::MediumEditor::Plugin::Base
      def self.javascripts
        ["medium-editor-tables-plugin"]
      end

      def self.stylesheets
        ["medium-editor-tables-plugin"]
      end
    end
  end
end
