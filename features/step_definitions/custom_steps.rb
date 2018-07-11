require "selenium-cucumber"
require_relative "../pages/google_page.rb"
Given("我進入GOOGLE首頁") do
  @google = Google.new
  @google.go
end

When("輸入{string}") do |content|
  @google.enter_txt(content)
end

When("按下搜尋") do
  @google.click_search
end

Then("我可以看到 {string} 的東西") do |content|
  @google.see(content)
end
