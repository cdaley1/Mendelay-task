Feature: Mendeley Sign Up Functionality

	As a user
	I want to create a new account for mendeley

#Scenario that has been automated in sign_up_steps.rb
Scenario: Users successfully signs up for a mendeley account
	Given a user goes to the Mendelay website and clicks register
	When they go through the sign up process
	Then they should be successfuly given a mendeley account


#4 other scenarios
#Scenario: Unsuccessful sign up (invalid email)
#	Given a user goes to "http://www.mendelay.com"
#	When they attempt to sign up with an invalid email address
#	Then they should receive an error message


#Scenario: Unsuccessful sign up (no family name entered)
#	Given a user visits the Mendelay website
#	When they attempt to sign up without entering family name
#	Then they should get a family name is required error message


#Scenario: Unsuccessful sign up (no given name entered)
#	Given a user visits the Mendelay website
#	When they attempt to sign up without entering given name
#	Then they should get a given name is required error message	


#Scenario: Unsuccessful sign up (password too short)
#	Given a user visits the Mendelay website
#	When they attempt to sign up with a password shorter than 6 characters
#	Then they should receive an error message saying "Password must have at least 6 characters."


