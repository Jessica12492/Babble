require 'rails_helper'

RSpec.describe "chatrooms/index", type: :view do
  before(:each) do
    assign(:chatrooms, [
      Chatroom.create!(
        name: "Name"
      ),
      Chatroom.create!(
        name: "Name"
      )
    ])
  end

  it "renders a list of chatrooms" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
  end
end
