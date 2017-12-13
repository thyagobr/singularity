require 'rails_helper'

RSpec.describe "remarks/show", type: :view do
  before(:each) do
    @remark = assign(:remark, Remark.create!(
      :references => "",
      :user => nil,
      :text => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
  end
end
