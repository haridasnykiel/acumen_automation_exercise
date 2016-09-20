class ContactPage < GenericPage
  def initialize browser
    @browser = browser
  end

  def visit
    contact_us = @browser.ul(id: 'menu').li(id: 'menu-item-497')
    contact_us.when_present.click

  end

  def check_postcode
    postcode_p = @browser.div(class: 'nine column').p
    postcode_p.inner_html.include? "TW9 1HY"
    # binding.pry
  end

end
