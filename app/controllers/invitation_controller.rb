class InvitationController < ApplicationController

  skip_before_action :authenticate_user!, :only => [:index]

  def hello
  end

end
