Feature: User opens TCC website
          navigates to Contact page
          fills out form
          submits form

  @contact_form
  Scenario:
    Given start browser
    When navigate to https://taxcreditco.com/
    Then expect home page is opened
    When click contact button on the homepage
    Then expect contact page is opened
    When set name on contact form to test
    When set title on contact form to test
    When set company on contact form to test
    When set email on contact form to test@test.com
    When set phone on contact form to 333-555-4444
    When set message on contact form to test
    When click submit on contact form
    Then expect success message is present