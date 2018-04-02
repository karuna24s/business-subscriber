require 'rails_helper'

RSpec.describe Business, type: :model do
  it { should have_many(:subscribers).dependent(:destroy) }
  it { should validate_presence_of(:name) }
end
