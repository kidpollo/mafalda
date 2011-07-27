require 'spec_helper'

describe "topicos/edit.html.erb" do
  before(:each) do
    @topico = assign(:topico, stub_model(Topico,
      :titulo => "MyString",
      :descripcion => "MyText"
    ))
  end

  it "renders the edit topico form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => topicos_path(@topico), :method => "post" do
      assert_select "input#topico_titulo", :name => "topico[titulo]"
      assert_select "textarea#topico_descripcion", :name => "topico[descripcion]"
    end
  end
end
