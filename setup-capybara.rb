# Require the gems
require 'capybara/poltergeist'

# Configure Poltergeist to not blow up on websites with js errors aka every website with js
# See more options at https://github.com/teampoltergeist/poltergeist#customization
Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new(app, js_errors: false)
end

# Configure Capybara to use Poltergeist as the driver
Capybara.default_driver = :poltergeist
# After this is run, load pry with " 'pry -r './setup-capybara.rb' "
# $ pry -r './setup-capybara.rb'
# pry(main)> # The object we'll interact with
# pry(main)> browser = Capybara.current_session
# pry(main)> # Go to a web page (first request will take a bit)
# pry(main)> url = "https://github.com/jnicklas/capybara"
# pry(main)> browser.visit url
# pry(main)> # Save the page locally, and open it (this is what Launchy does)
# pry(main)> browser.save_and_open_page
