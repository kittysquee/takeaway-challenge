require 'twilio-ruby'

class Texter

  attr_reader :client

  def initialize
    account_sid = 'AC6612e0baf00f044822ca233dcccb24b6'
    auth_token = 'ad10c6c767e5ff7b3d501e41f21fd607'
    @client = Twilio::REST::Client.new account_sid, auth_token
  end

  def send_message
    #Your new Phone Number is +441530382009

    @client.messages.create(
      from: '+441530382009',
      to: '+447710669803',
      body: 'Your order was placed and will be delivered before (TIME SHIZZ). Thank you! 🍖'
    )
  end
end
