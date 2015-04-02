require 'capybara/dsl'

module GreenOnion
  class Selenium
    include Capybara::DSL

    # Capybara.register_driver :selenium do |app|
    #   Capybara::Selenium::Driver.new(app, :browser => :chrome)
    # end

    def initialize
      Capybara.default_driver = :selenium
    end

    def record(url, path, dimensions=nil)
      visit url
      page.driver.browser.save_screenshot(path)
    end

  end
end