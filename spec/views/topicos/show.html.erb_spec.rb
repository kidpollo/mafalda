require 'spec_helper'

describe "topicos/show.html.erb" do
  before(:each) do
    @topico = assign(:topico, stub_model(Topico,
      :titulo => "Titulo",
      :descripcion => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Titulo/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
