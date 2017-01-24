require 'medium-editor-engine/plugin/base'

module MediumEditorEngine
  module Plugin
    class Tables < ::MediumEditorEngine::Plugin::Base
      def self.javascripts
        ["medium-editor-tables-plugin"]
      end

      def self.stylesheets
        ["medium-editor-tables-plugin"]
      end
    end
  end
end
