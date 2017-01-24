require 'medium-editor-engine/helpers'

namespace :tables_plugin do
  include MediumEditorEngine::Helpers
  task :update do
    puts `bower install medium-editor-tables --save`
    copy_asset "bower_components/medium-editor-tables/dist/css/medium-editor-tables.css", "medium-editor-tables/medium-editor-tables.min.css"
    copy_asset "bower_components/medium-editor-tables/dist/js/medium-editor-tables.js", "medium-editor-tables/medium-editor-tables.min.js"
  end
end
