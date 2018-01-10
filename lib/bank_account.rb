require 'pry'

class BankAccount

  attr_accessor :balance, :status
  attr_reader :name

  def initialize(name, balance = 1000, status = "open")
    @name = name
    @balance = balance
    @status = status
  end

  def self.deposit
    binding.pry
    self.balance
  end
end
