class Account
  
  attr_reader :balance, :statement

  def initialize
    @balance = 0
    @statement = []
  end

  def deposit(amount)
    @balance += amount 
    @statement << {date: Time.now.strftime("%d/%m/%y"), credit: amount, debit: '', balance: @balance}
  end

  def withdraw(amount)
    @balance -= amount
    @statement << {date: Time.now.strftime("%d/%m/%y"), credit: '', debit: amount, balance: @balance}
  end

  def statement
    puts Hirb::Helpers::Table.render(@statement)
  end

end