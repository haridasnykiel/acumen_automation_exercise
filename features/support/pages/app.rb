class App
  def initialize browser
    @browser = browser
  end

  def contact_page
    ContactPage.new @browser
  end

  def home_page
    HomePage.new @browser
  end

end
