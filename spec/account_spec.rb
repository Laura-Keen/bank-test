require 'account'

describe Account do

  describe '#deposit' do
    it 'Allows the user to make a deposit' do
      subject.deposit(10)
      expect(subject.balance).to eq 10.00
    end
  end

  describe '#withdraw' do
    it 'Allows the user to make a withdrawal' do
      subject.deposit(10)
      subject.withdraw(5)
      expect(subject.balance).to eq 5.00
    end
  end
  
end

