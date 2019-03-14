module TccWebsite
  class ContactPage
    def element name
      case name
      when 'name'
        Browser.browser.text_field xpath: '//*[@name="firstname"]'
      when 'title'
        Browser.browser.text_field xpath: '//*[@name="jobtitle"]'
      when 'message'
        Browser.browser.textarea xpath: '//*[@name="message"]'
      else
        Browser.browser.text_field xpath: "//*[@name='#{name}']"
      end
    end

    def submit
      Browser.browser.element xpath: '//*[@class="hs-button primary large"]'
    end

    def success
      Browser.browser.element xpath: '//*[text()="Thanks for reaching out! A representative will be in touch shortly."]'
    end
  end
end