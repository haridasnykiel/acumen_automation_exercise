class ContactPage < GenericPage
  def initialize browser
    @browser = browser
  end

  def visit
    @browser.goto "http://www.acumenci.com/contact-us/"
  end

end
