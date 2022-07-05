# frozen_string_literal: true

class AuthController < ApplicationController
  def login
    uri = URI('https://accounts.google.com/o/oauth2/v2/auth')

    uri.query = {
      client_id:     ENV.fetch('GOOGLE_CLIENT_ID', nil),
      client_secret: ENV.fetch('GOOGLE_CLIENT_SECRET', nil),
      redirect_uri:  ENV.fetch('GOOGLE_REDIRECT_URI', nil)
    }.to_query

    redirect_to uri.to_s, allow_other_host: true
  end

  def logout; end

  def callback
    redirect_to root_path
  end
end
