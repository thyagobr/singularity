require 'rails_helper'

RSpec.describe "remarks/edit", type: :view do
  before(:each) do
    @remark = assign(:remark, Remark.create!(
      :references => "",
      :user => nil,
      :text => "MyText"
    ))
  end

  it "renders the edit remark form" do
    render

    assert_select "form[action=?][method=?]", remark_path(@remark), "post" do

      assert_select "input[name=?]", "remark[references]"

      assert_select "input[name=?]", "remark[user_id]"

      assert_select "textarea[name=?]", "remark[text]"
    end
  end
end
