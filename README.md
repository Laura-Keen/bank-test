# Bank Tech Test

This is a practice technical test from week 10 of Makers Academy.

## Specification

### Requirements

- You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
- Deposits, withdrawal.
- Account statement (date, amount, balance) printing.
- Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

Given a client makes a deposit of 1000 on 10-01-2012
And a deposit of 2000 on 13-01-2012
And a withdrawal of 500 on 14-01-2012
When she prints her bank statement
Then she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```
## Planning

If you would like to know more about how I planned this app, please refer to the plannning.md document

## Installation

To use this app, clone this repository to your local computer and run the following in the command line:

    bundle install

This should install all of the gems in the gemfile - the app should then be ready to use

## How To Use

### Running Tests

This app uses Rspec as the testing framework, to run the tests, enter into the command line:

    rspec

### Using App In IRB

The best way to use this app is in a REPL. Whilst developing this I used IRB to run this app:

    irb 
    > require './lib/account.rb'
    > require 'hirb'
    > account = Account.new
    > account.deposit(10)
    > account.deposit(30)
    > account.withdraw(10)
    > account.balance
    > 30
    > account.statement
    > +---------+--------+----------+-------+
      | balance | credit | date     | debit |
      +---------+--------+----------+-------+
      | 10      | 10     | 07/04/21 |       |
      | 40      | 30     | 07/04/21 |       |
      | 30      |        | 07/04/21 | 10    |
      +---------+--------+----------+-------+