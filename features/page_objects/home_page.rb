module TccWebsite
  class HomePage
    def contact
      Browser.browser.element xpath: '//a[text()="Contact"][@class="btn btn-arrow"]'
    end
  end
end