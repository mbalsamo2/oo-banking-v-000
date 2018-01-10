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
    if valid? == false && status == "complete"
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."

    elsif self.valid? == true && self.status != "complete" && sender.balance > amount
      self.sender.balance -= self.amount
      self.receiver.balance += self.amount
      self.status = "complete"
      self.sender.balance
      self.receiver.balance
    end
  end

  def reverse_transfer
    if self.status == "complete"
      self.sender.balance += self.amount
      self.receiver.balance -= self.amount
      self.status = "reversed"
    end
  end

end
