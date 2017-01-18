namespace :tables_plugin do
  task :update do
    puts `bower install medium-editor-tables --save`
    copy_asset "bower_components/medium-editor-tables/dist/css/medium-editor-tables.css", "medium-editor-tables/medium-editor-tables.min.css"
    copy_asset "bower_components/medium-editor-tables/dist/js/medium-editor-tables.js", "medium-editor-tables/medium-editor-tables.min.js"
  end
end

def copy_asset filename, rel_filename=nil
  rel_filename = File.basename(filename) unless rel_filename
  folder = rel_filename.downcase.include?('.css') ? 'stylesheets' : 'javascripts'
  puts "vendoring " + rel_filename + " to " + folder
  FileUtils::mkdir_p "vendor/assets/#{folder}/#{File.dirname(rel_filename)}"
  FileUtils.cp filename, File.join("vendor/assets/#{folder}", rel_filename)
end
