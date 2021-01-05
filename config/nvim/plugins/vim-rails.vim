let g:rails_projections = {
    \  "app/controllers/*_controller.rb": {
    \      "test": [
    \        "spec/requests/{}_spec.rb",
    \        "spec/controllers/{}_controller_spec.rb",
    \        "test/controllers/{}_controller_test.rb"
    \      ],
    \      "alternate": [
    \        "spec/requests/{}_spec.rb",
    \        "spec/controllers/{}_controller_spec.rb",
    \        "test/controllers/{}_controller_test.rb"
    \      ],
    \   },
    \   "spec/requests/*_spec.rb": {
    \      "command": "request",
    \      "alternate": "app/controllers/{}_controller.rb",
    \      "template": "require 'rails_helper'\n\n" .
    \        "RSpec.describe '{}' do\nend",
    \   },
    \  "lib/tasks/*.rake": {
    \      "test": [
    \        "spec/lib/tasks/{}_spec.rb",
    \      ],
    \   },
    \   "spec/lib/tasks/*_spec.rb": {
    \      "command": "rake",
    \      "alternate": "lib/tasks/{}.rake",
    \      "template": "require 'rails_helper'\n\n" .
    \        "RSpec.describe '{}' do\nend",
    \   },
    \ }
