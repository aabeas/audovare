class TwilioController < ApplicationController
  include Webhookable

  after_action :set_header

  skip_before_action :verify_authenticity_token

  account_sid = ENV["twilio_account_sid"]
  auth_token = ENV["twilio_auth_token"]

  def voice
    response = Twilio::TwiML::VoiceResponse.new do |r|

      r.say('I will pause 5 seconds starting now!', voice: 'alice')
      r.pause(length: 5)
      r.say('I just paused 5 seconds', voice: 'alice')
      r.play(url: 'http://linode.rabasa.com/cantina.mp3')

    end
    render_twiml(response)

  end

  # def test
  #
  # end
end
