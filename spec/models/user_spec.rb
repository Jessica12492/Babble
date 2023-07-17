require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(email: "sabrina@gmail.com", password:"123456"  )}
  it "is valid with valid attributes" do
    expect(subject).to be_valid
  
end
