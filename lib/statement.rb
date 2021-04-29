require './lib/account.rb'

class Statement
  def self.print(statement)
    puts Hirb::Helpers::Table.render(statement, fields: [:date, :credit, :debit, :balance])
  end

end
