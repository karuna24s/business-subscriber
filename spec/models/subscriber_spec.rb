require 'rails_helper'

RSpec.describe Subscriber, type: :model do
  it { should belong_to(:business) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email_address) }
end
