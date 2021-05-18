require 'capybara'
require 'capybara/cucumber'
require 'cpf_cnpj'
require 'faker'
require 'passgen'
require 'pry'
require 'selenium-webdriver'
require 'site_prism'
require_relative 'page_helper'
require 'rubocop'

BROWSER = ENV['BROWSER']
AMBIENTE = ENV["AMBIENTE"]

World(Pages)

Capybara.register_driver :selenium do |app|
  if BROWSER.eql?('chrome')
        Capybara::Selenium::Driver.new(app, :browser => :chrome)
  elsif BROWSER.eql?('firefox')
    Capybara::Selenium::Driver.new(app, :browser => :firefox, :marionette =>true)
  elsif BROWSER.eql?('ie')
    Capybara::Selenium::Driver.new(app, :browser => :internet_explorer)
  end
end


Capybara.configure do |config|
  config.default_driver = :selenium_chrome if BROWSER.eql?('chrome')
  config.default_driver = :selenium if BROWSER.eql?('firefox')
  config.app_host = 'https://m2-stage.drogasil.com.br'
  config.default_max_wait_time = 10
  Capybara.page.driver.browser.manage.window.maximize if BROWSER.eql?('chrome')
end