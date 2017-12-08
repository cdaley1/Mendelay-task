# Set up browser
browser = Watir::Browser.new :firefox

Before do
  @browser = browser
  #@browser.window.resize_to(1000, 900)
  @browser.cookies.clear

  @app = App.new @browser
end

at_exit do
  browser.close
  headless.destroy if ENV['HEADLESS']
end
