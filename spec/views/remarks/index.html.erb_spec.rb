require 'rails_helper'

RSpec.describe "remarks/index", type: :view do
  before(:each) do
    assign(:remarks, [
      Remark.create!(
        :references => "",
        :user => nil,
        :text => "MyText"
      ),
      Remark.create!(
        :references => "",
        :user => nil,
        :text => "MyText"
      )
    ])
  end

  it "renders a list of remarks" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
