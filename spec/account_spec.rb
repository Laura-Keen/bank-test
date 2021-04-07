require 'account'

describe Account do

  before(:each) do
    @account = Account.new
    @account.deposit(10)
  end

  describe '#deposit' do
    it 'Allows the user to make a deposit' do
      expect(@account.balance).to eq 10.00
    end
  end

  describe '#withdraw' do
    it 'Allows the user to make a withdrawal' do
      @account.withdraw(5)
      expect(@account.balance).to eq 5.00
    end
  end
  
end

