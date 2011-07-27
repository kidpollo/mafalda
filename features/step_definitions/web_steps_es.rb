require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "selectors"))

module WithinHelpers
  def with_scope(locator)
    locator ? within(*selector_for(locator)) { yield } : yield
  end
end
World(WithinHelpers)


Dado /^que estoy en (.+)$/ do |page_name|
  visit path_to(page_name)
end


# **** Navegar a una pagina / link a una pagina *****

Dado /^que navego a (.+)$/ do |page_name|
  visit path_to(page_name)
end

Cuando /^voy a (.+)$/ do |page_name|
  visit path_to(page_name)
end

Cuando /^visito (.+)$/ do |page_name|
  visit path_to(page_name)
end

Cuando /^hago click en "([^"]*)"$/ do |link|
  click_link(link)
end


# **** Interactuar con formularios *****

Cuando /^pulso "([^"]*)"$/ do |button|
  click_button(button)
end

Cuando /^oprimo "([^"]*)"$/ do |button|
  click_button(button)
end

Cuando /^completo "([^"]*)" con "([^"]*)"$/ do |field, value|
  fill_in(field, :with => value)
end

Cuando /^completo lo siguiente:$/ do |fields|
  fields.rows_hash.each do |name, value|
    Cuando %{completo "#{name}" con "#{value}"}
  end
end
# Use este formato cuando completa un formulario con datos de una tabla. Ejemplo:
#
#   Cuando completo lo siguiente:
#     | Cuenta Numero  | 5002       |
#     | Fecha         | 2009-11-01 |
#     | Nota          | Aprendiendo Rails   |
#     | Email         | mafalda@example.com |



Cuando /^selecciono "([^"]*)" de "([^"]*)"$/ do |value, field|
  select(value, :from => field)
end

#Entonces /^debo ver el botón "([^"]*)"$/ do |button_name|
#  find_button(button_name)
#end

#Entonces /^deberia ver "([^"]*)"$/ do |text|
#  if page.respond_to? :should
#    page.should have_content(text)
#  else
#    assert page.has_content?(text)
#  end
#end
Entonces /^deberia ver "([^"]*)"$/ do |text|
  if page.respond_to? :should
    page.should have_content(text)
  else
    assert page.has_content?(text)
  end
end


#Entonces /^(?:|Yo )deberia ver \/([^\/]*)\/$/ do |regexp|
#  regexp = Regexp.new(regexp)
#
#  if page.respond_to? :should
#    page.should have_xpath('//*', :text => regexp)
#  else
#    assert page.has_xpath?('//*', :text => regexp)
#  end
#end

Entonces /^no deberia ver "([^"]*)"$/ do |text|
  if page.respond_to? :should
    page.should have_no_content(text)
  else
    assert page.has_no_content?(text)
  end
end

Entonces /^(?:|Yo )no deberia ver \/([^\/]*)\/$/ do |regexp|
  regexp = Regexp.new(regexp)

  if page.respond_to? :should
    page.should have_no_xpath('//*', :text => regexp)
  else
    assert page.has_no_xpath?('//*', :text => regexp)
  end
end

Y /^debo estar en (.+)$/ do |page_name|
  current_path = URI.parse(current_url).path
  if current_path.respond_to? :should
    current_path.should == path_to(page_name)
  else
    assert_equal path_to(page_name), current_path
  end
end

Entonces /^muestrame la pagina$/ do
  save_and_open_page
end
