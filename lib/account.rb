class Account
  
  attr_reader :balance, :statement

  def initialize
    @balance = 0
    @statement = []
  end

  def deposit(amount)
    @balance += amount 
    @statement << {date: Time.now.strftime("%d/%m/%y"), credit: "#{'%.2f' % amount}", debit: '', balance: "#{'%.2f' % @balance}"}
  end

  def withdraw(amount)
    @balance -= amount
    @statement << {date: Time.now.strftime("%d/%m/%y"), credit: '', debit: "#{'%.2f' % amount}", balance: "#{'%.2f' % @balance}"}
  end

  def statement
    puts Hirb::Helpers::Table.render(@statement, fields: [:date, :credit, :deposit, :balance])
  end

end