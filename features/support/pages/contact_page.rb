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
    get_send_btn = @browser.input(value: "Send")
    get_send_btn.click

  end

  def check_error_message
    check_error_message = @browser.div(class: "wpcf7-response-output wpcf7-display-none wpcf7-validation-errors")
    check_error_message.exists?
  end

  def check_error_message_for_each_field
    check_error_messages = @browser.spans(class: "wpcf7-not-valid-tip")
    if check_error_messages.length == 3
      true
    end
    # binding.pry
  end

end
