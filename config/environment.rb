
# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
MyAppV40::Application.initialize!

Time::DATE_FORMATS[:ru_datetime] = "%d %B %Y ,B %H:%M"
