require 'rails_helper'

RSpec.describe "documents/show", :type => :view do
  before(:each) do
    @document = assign(:document, Document.create!(
      :title => "Title",
      :year => 1,
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/MyText/)
  end
end
