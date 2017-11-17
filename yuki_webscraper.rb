require 'selenium-webdriver'
require 'timeout'
driver = Selenium::WebDriver.for :chrome
driver.navigate.to "https://wikipedia.org/wiki/Yukihiro_Matsumoto"
wait = Selenium::WebDriver::Wait.new(:timeout => 40)
# Error said :timeout was deprecated - use (Timeout::timeout(20))
name = wait.until {
  element_1 = driver.find_element(:class, "firstHeading")
}
puts name.text
born = wait.until {
  element_2 = driver.find_element(:css, ".infobox.biography.vcard")
  element_2.find_element(:class, "birthplace")
}
puts born.text
image_url = wait.until {
  element_3 = driver.find_element(:class, "image").attribute("href")
}
puts image_url
driver.quit
