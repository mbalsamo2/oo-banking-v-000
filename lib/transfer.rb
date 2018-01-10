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

    if self.sender.valid? == false
      "Transaction rejected. Please check your account balance."
    else
      self.sender.balance -= self.amount
      self.receiver.balance += self.amount
      self.status = "complete"
    end
  end

end
