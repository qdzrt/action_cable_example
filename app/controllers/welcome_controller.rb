class WelcomeController < ApplicationController
  def show
    @messages = Message.all
  end
end
