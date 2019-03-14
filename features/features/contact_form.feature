Feature: Contact Form page functionality

  @contact_form
  Scenario:
    Given start browser
    Then navigate to https://taxcreditco.com/
    Then click contact button on the homepage
    Then expect contact page is opened
    Then set name on contact form to test
    Then set title on contact form to test
    Then set company on contact form to test
    Then set email on contact form to test@test.com
    Then set phone on contact form to 333-555-4444
    Then set message on contact form to test
    Then click submit on contact form
    Then expect success message is present