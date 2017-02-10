# Tables Plugin for Rails

This gem integrates [Medium Editor Tables Plugin](https://github.com/yabwe/medium-editor-tables) with Rails asset pipeline.

## Version

The latest version of plugin bundled by this gem is [v0.6.1](https://github.com/yabwe/medium-editor-tables)

## Installation

Include **medium-editor-tables-plugin** in your Rails project's Gemfile:

```ruby
gem 'medium-editor'
gem 'medium-editor-tables-plugin'
```

## Configuration

Include javascript file in **app/assets/javascripts/application.js**:

```javascript
//= require medium-editor
//= require medium-editor-tables-plugin
```

Include stylesheet file in **app/assets/stylesheets/application.css**:

```css
/*
*= require medium-editor
*= require medium-editor-tables-plugin
*/
```

## Using plugin with Medium Editor

Initialize Medium Editor and add Tables Plugin inside configuration:

```html
<div class="editable"></div>

<script>
  $(document).ready(function(){
    var editor = new MediumEditor('.editable', {
      buttonLabels: 'fontawesome',
      toolbar: {
        buttons: [
          'bold',
          'italic',
          'table'
        ]
      },
      extensions: {
        table: new MediumEditorTable()
      }
    });
  });
</script>
```

## Contributing

1. Fork it ( https://github.com/mwlang/medium-editor-tables-plugin/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
