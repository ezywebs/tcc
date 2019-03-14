Then /^click contact button on the homepage$/ do
  @contact = TccWebsite.home_page.contact
  @contact.click
end

