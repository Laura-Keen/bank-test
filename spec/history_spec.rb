require 'history'

describe History do
  let(:account) { spy('fake account') }

  describe '#credit' do
    it 'Says how much was deposited into the account' do
      account.deposit(10)
      expect(subject.credit).to eq 10
    end
  end

end
