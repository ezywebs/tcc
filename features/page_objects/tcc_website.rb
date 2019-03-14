module TccWebsite
  class << self
    def home_page
      HomePage.new
    end

    def contact_page
      ContactPage.new
    end
  end
end