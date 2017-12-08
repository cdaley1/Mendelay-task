Given("a user goes to the Mendelay website and clicks register") do
  @signUp = @app.signup
  @signUp.visit
  @signUp.register_button
end

When("they go through the sign up process") do
  #Fill in email
  @signUp = @app.signup
  @signUp.enter_email
  #First Page
  @signUp.enter_details_1
  #Second Page
  @signUp.enter_details_2
end

Then("they should be successfuly given a mendeley account") do
	@browser.span(class: "with-icon-text with-icon-before icon-users").wait_until_present
  expect(@browser.url).to match("https://www.mendeley.com/newsfeed/")
end
