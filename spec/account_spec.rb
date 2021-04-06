require 'account'

describe Account do

  describe '#deposit' do
    it 'Allows the user to make a deposit' do
      subject.deposit(10)
      expect(subject.balance).to eq 10
    end
  end

end

