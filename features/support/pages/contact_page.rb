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

  def add_email
    get_email_field = @browser.input(name: "your-email")
    get_email_field.send_keys(TESTDATA["email"])
  end

  def add_message
    get_message = @browser.text_field(name: "your-message")
    get_message.send_keys(TESTDATA["message"])
  end

  def click_send_btn
    binding.pry
  end


end
