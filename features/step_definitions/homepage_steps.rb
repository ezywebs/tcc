When /^click contact button on the homepage$/ do
  @contact = TccWebsite.home_page.contact
  @contact.click
end

Then /^expect home page is opened$/ do
  expect(@browser.title).to eql('TCC | Tax Credit')
end