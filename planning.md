# Planning

## User Stories

### User Story 1:

As a customer  
So that I can keep my money safe  
I would like to be able to make a deposit  

### User Story 2:

As a customer  
So that I can access my money  
I would like to be abke to make a withdrawal  

### User Story 3:

As a customer  
So that I can keep track of my money  
I would like to be able to print an account statement  

*Statement should include:*
- date
- amount
- balance

### User Story 4:

As a customer  
So that I can know my financial history  
I would like my data to be stored in memory  

*This does not require a database*


## User Story 1:

As a customer  
So that I can keep my money safe  
I would like to be able to make a deposit  

**Class:** Account  
**Initialize:** Balance = 0  
**Method:** deposit(amount)  

*Test In IRB:*  
account = Account.new  
account.deposit(10)  
account.balance = 10  

## User Story 2:

As a customer  
So that I can access my money  
I would like to be abke to make a withdrawal  

**Class:** Account  
**Initialize:** Balance = 0  
**Method:** withdraw(amount)  

*Test In IRB:*  
account = Account.new  
account.deposit(10) 
account.withdraw(5) 
account.balance = 5  

### User Story 3:

As a customer  
So that I can keep track of my money  
I would like to be able to print an account statement  

<img width="764" alt="Screenshot 2021-04-07 at 13 15 09" src="https://user-images.githubusercontent.com/60509804/113864878-55ce9f00-97a3-11eb-8110-7cf47ecaa362.png">

Use an array of hash and and hirb gem:

statement = [
  {date: 'date', credit: 'credit', debit: 'debit', balance: 'balance'}
  {date: 'date', credit: 'credit', debit: 'debit', balance: 'balance'}
  {date: 'date', credit: 'credit', debit: 'debit', balance: 'balance'}
]

puts Hirb::Helpers::AutoTable.render(statement)

|Example Output|
```
date || credit || debit || balance
14/01/2012 || || 20.00 || 40.00
13/01/2012 || 50.00 || || 60.00
10/01/2012 || 10.00 || || 10.00
```

