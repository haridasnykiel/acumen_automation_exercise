browser = Watir::Browser.new :chrome

Before do
  @app ||= App.new browser
end

at_exit do
  browser.close
end
