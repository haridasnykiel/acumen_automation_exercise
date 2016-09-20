class ContactPage < GenericPage
  def initialize browser
    @browser = browser
  end

  def visit
    contact_us = @browser.ul(id: 'menu').li(id: 'menu-item-497')
    contact_us.when_present.click
    # binding.pry
  end

  def check_postcode
    # postcode_p = @browser.div(class: 'nine column').p
  end

end
