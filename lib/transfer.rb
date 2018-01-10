require 'pry'

class Transfer

  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount = 50, status = "pending")
    @sender = sender
    @receiver = receiver
    @status = status
    @amount = amount
  end

  def valid?
    self.receiver.valid? && self.sender.valid?
  end

  def execute_transaction
    # binding.pry
    if self.sender.valid? == false
      "Transaction rejected. Please check your account balance."
    elsif self.sender.valid? == true
      self.sender.balance -= self.amount
      self.receiver.balance += self.amount
      self.status = "complete"
      self.sender.balance
      self.receiver.balance
    end
  end

  def reverse_transfer

  end
end
