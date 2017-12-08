class SignUpPage < GenericPage

	def visit
		@browser.goto "http://mendeley.com"
	end

	def register_button
		@browser.ul.li(class: "with-divider").click
	end

	def enter_email
		@browser.input(id: "email").when_present.send_keys ("hell011john@hotmail.co.uk")
		@browser.button(id: "els-continue").click
	end

	def enter_details_1
		@browser.input(id: "givenName").when_present.send_keys ("john")
  	@browser.input(id: "familyName").send_keys ("doe")
  	@browser.input(id: "password").send_keys ("doeJohn08")
  	@browser.button(class: "els-primaryBtn").click
  	@browser.button(id: "register_continue").click
  	sleep 2
	end

	def enter_details_2
  	@browser.select(id: "userRole").select_value("Lecturer")
  	@browser.select(id: "subjectArea").select_value("Chemistry")
  	@browser.button(class: "button-primary submit").click
	end



end
