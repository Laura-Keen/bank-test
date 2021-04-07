class Account
  
  attr_reader :balance, :credit

  def initialize
    @balance = 0
    @credit = []
    @debit = []
  end

  def deposit(amount)
    @credit << amount 
    @balance += amount
  end

  def withdraw(amount)
    @debit << amount
    @balance -= amount
  end

end