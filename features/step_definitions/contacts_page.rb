Then /^expect contact page is opened$/ do
  expect(@browser.title).to eql('Contact TCC | TCC')
end

When /^set (.*) on contact form to (.*)$/ do |element, value|
  @element = TccWebsite.contact_page.element element
  @element.set value
  expect(@element.value).eql?(value)
end

When /^click submit on contact form$/ do
  @submit = TccWebsite.contact_page.submit
  @submit.click
end

Then /^expect success message is present$/ do
  @success = TccWebsite.contact_page.success
  @success.wait_until(&:present?)
  expect(@success).to be_present
end