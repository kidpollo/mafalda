require 'spec_helper'

describe "topicos/new.html.erb" do
  before(:each) do
    assign(:topico, stub_model(Topico,
      :titulo => "MyString",
      :descripcion => "MyText"
    ).as_new_record)
  end

  it "renders new topico form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => topicos_path, :method => "post" do
      assert_select "input#topico_titulo", :name => "topico[titulo]"
      assert_select "textarea#topico_descripcion", :name => "topico[descripcion]"
    end
  end
end
