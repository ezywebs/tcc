module Browser
  class << self
    attr_accessor :browser

    def start
      @browser = Watir::Browser.new :chrome
    end
  end
end