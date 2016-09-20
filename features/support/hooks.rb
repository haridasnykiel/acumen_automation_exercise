browser = Watir::Browser.new :chrome

Before do
  @app ||= App.new browser
end

# After do |scenario|
#
# end

at_exit do
  browser.close
end
