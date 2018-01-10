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
    # binding.pry
    self.receiver.valid? && self.sender.valid?
  end

  def execute_transaction
    if self.sender.valid? == false
      "rejected"
    end
  end
  
end
