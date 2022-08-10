require 'rails_helper'

RSpec.describe Transactions1, type: :model do
  context 'Testing validations on a single subject' do
    before(:all) do
      @user = User.create(full_name: 'Anicet Shemeki', password: '123456', email: 'anicetshemeki@gmail.com')
    end
    subject { Transactions.new(name: 'Greengrocery', amount: 20, user_id: @user) }
    before { subject.save }

    it 'name must not be blank' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'amount must not be blank' do
      subject.amount = nil
      expect(subject).to_not be_valid
    end

    it 'should belong to a user' do
      subject.user = nil
      expect(subject).to_not be_valid
    end
  end
end
