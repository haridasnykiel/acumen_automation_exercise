Given(/^I am on the Acumen home page$/) do
  @app.home_page.visit
end

When(/^I navigate to the Contact Us page$/) do
  @app.contact_page.visit
end

Then(/^I should see an accurate postcode “TW9 1HY”$/) do
  @app.contact_page.check_postcode
end

Given(/^I am on the Acumen Contact Us page$/) do
  if @app.contact_page.url == "http://www.acumenci.com/contact-us/"
    true
  end
end

When(/^I submit just an e\-mail address and some message text and all other input fields are blank$/) do
  @app.contact_page.add_email
  @app.contact_page.add_message
  @app.contact_page.click_send_btn
end

Then(/^I should see errors about the other required fields$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
