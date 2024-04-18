# frozen_string_literal: true

# Can you tell I'm a python dev trying to learn ruby with this?

task :dev do
  puts 'starting server...'
  `rails s`
end

task :lint do
  puts 'gogo Gadget RuboCop!!'
  `bundle exec rubocop -A`
end
