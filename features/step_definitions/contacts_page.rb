Then /^expect contact page is opened$/ do
  expect(@browser.title).to eql('Contact TCC | TCC')
end

Then /^set (.*) on contact form to (.*)$/ do |element, value|
  @element = TccWebsite.contact_page.element element
  @element.set value
  expect (@element.value).eql?(value)
end

Then /^click submit on contact form$/ do
  @submit = TccWebsite.contact_page.submit
  @submit.click
end

Then /^expect success message is present$/ do
  @success = TccWebsite.contact_page.success
  @success.wait_until(&:present?)
  expect(@success).to be_present
end





# Then /^set name on contact form to (.*)$/ do |name|
#   @name = TccWebsite.contact_page.name
#   @name.set name
#   step "expect name on contact form is #{name}"
# end
#
# Then /^expect name on contact form is (.*)$/ do |name|
#   expect (@name.value).eql?(name)
# end

# Then /^set title on contact form to (.*)$/ do |title|
#   @title = TccWebsite.contact_page.title
#   @title.set title
#   step "expect title on contact form is #{title}"
# end
#
# Then /^expect title on contact form is (.*)$/ do |title|
#   expect (@title.value).eql?(title)
# end
#
# Then /^set company on contact form to (.*)$/ do |company|
#   @company = TccWebsite.contact_page.company
#   @company.set company
#   step "expect company on contact form is #{company}"
# end
#
# Then /^expect company on contact form is (.*)$/ do |company|
#   expect (@company.value).eql?(company)
# end
#
# Then /^set email on contact form to (.*)$/ do |email|
#   @email = TccWebsite.contact_page.email
#   @email.set email
#   step "expect email on contact form is #{email}"
# end
#
# Then /^expect email on contact form is (.*)$/ do |email|
#   expect (@email.value).eql?(email)
# end
#
# Then /^set phone on contact form to (.*)$/ do |phone|
#   @phone = TccWebsite.contact_page.phone
#   @phone.set phone
#   step "expect phone on contact form is #{phone}"
# end
#
# Then /^expect phone on contact form is (.*)$/ do |phone|
#   expect (@phone.value).eql?(phone)
# end
#
# Then /^set message on contact form to (.*)$/ do |message|
#   @message = TccWebsite.contact_page.message
#   @message.set message
#   step "expect message on contact form is #{message}"
# end
#
# Then /^expect message on contact form is (.*)$/ do |message|
#   expect (@message.value).eql?(message)
# end
