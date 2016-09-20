class ContactPage < GenericPage
  def initialize browser
    @browser = browser
  end

  def visit
    @browser.a(text: 'Contact Us').when_present.click
  end

  def check_postcode
    @browser.div(class: 'nine column').p.inner_html.include? "TW9 1HY"
  end

  def add_email
    @browser.text_field(name: "your-email").set(TESTDATA["email"])
  end

  def add_message
    @browser.text_field(name: "your-message").set(TESTDATA["message"])
  end

  def click_send_btn
    @browser.input(value: "Send").click
  end

  def check_error_message
    @browser.div(class: "wpcf7-response-output wpcf7-display-none wpcf7-validation-errors").wait_until_present
  end

  def check_error_message_for_each_field
    Watir::Wait.until(10) {@browser.spans(class: "wpcf7-not-valid-tip").length == 3}
    # binding.pry
  end

end
