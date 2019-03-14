Then /^start browser$/ do
  @browser = Browser.start
  @browser.window.maximize
end

Then /^navigate to (.+)$/ do |url|
  @browser.goto url
  step "expect current url is #{url}"
end

Then /^expect current url is (.+)$/ do |url|
  expect(@browser.url.include? url).to be_truthy
end