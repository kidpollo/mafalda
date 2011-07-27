# encoding: utf-8
begin require 'rspec/expectations'; rescue LoadError; require 'spec/expectations'; end
require 'cucumber/formatter/unicode'


Entonces /^debo ver el botón "([^"]*)"$/ do |button_name|
  find_button(button_name)
end

Cuando /^completo el campo "([^"]*)" con "([^"]*)"$/ do |field, value|
  fill_in(field, :with => value)
end


Entonces /^debo ver "([^"]*)"$/ do |text|
  if page.respond_to? :should
    page.should have_content(text)
  else
    assert page.has_content?(text)
  end
end


Entonces /^no debo ver "([^"]*)"$/ do |text|
  if page.respond_to? :should
    page.should_not have_content(text)
  else
    assert page.has_no_content?(text)
  end
end


Entonces /^no debo ver \/([^\/]*)\/$/ do |regexp|
  regexp = Regexp.new(regexp)

  if page.respond_to? :should
    page.should have_no_xpath('//*', :text => regexp)
  else
    assert page.has_no_xpath?('//*', :text => regexp)
  end
end

