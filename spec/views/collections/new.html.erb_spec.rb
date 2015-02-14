require 'rails_helper'

RSpec.describe "collections/new", :type => :view do
  before(:each) do
    assign(:collection, Collection.new(
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new collection form" do
    render

    assert_select "form[action=?][method=?]", collections_path, "post" do

      assert_select "input#collection_title[name=?]", "collection[title]"

      assert_select "textarea#collection_description[name=?]", "collection[description]"
    end
  end
end
