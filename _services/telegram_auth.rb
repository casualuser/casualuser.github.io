require 'sinatra/base'

class TelegramAuth < Sinatra::Base
  get '/auth/telegram' do
    # Verify hash, extract user data, create session, etc.
    "Telegram auth successful"
  end
end
