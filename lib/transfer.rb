class Transfer

  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, status = "pending", amount = 50)
    @sender = sender
    @receiver = receiver
    @status = status
    @amount = amount
  end

end
