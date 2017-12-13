require 'rails_helper'

RSpec.describe "remarks/new", type: :view do
  before(:each) do
    assign(:remark, Remark.new(
      :references => "",
      :user => nil,
      :text => "MyText"
    ))
  end

  it "renders new remark form" do
    render

    assert_select "form[action=?][method=?]", remarks_path, "post" do

      assert_select "input[name=?]", "remark[references]"

      assert_select "input[name=?]", "remark[user_id]"

      assert_select "textarea[name=?]", "remark[text]"
    end
  end
end
