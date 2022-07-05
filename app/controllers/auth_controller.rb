# frozen_string_literal: true

class AuthController < ApplicationController
  def login
    redirect_to client.authorization_uri, allow_other_host: true
  end

  def logout; end

  def callback
    client.code = params[:code]
    client.fetch_access_token!
  end

  def client
    @client ||= Signet::OAuth2::Client.new(
      authorization_uri:    'https://accounts.google.com/o/oauth2/auth',
      token_credential_uri: 'https://oauth2.googleapis.com/token',
      client_id:            ENV.fetch('GOOGLE_CLIENT_ID', nil),
      client_secret:        ENV.fetch('GOOGLE_SECRET', nil),
      scope:                'email profile https://www.googleapis.com/auth/calendar',
      redirect_uri:         ENV.fetch('GOOGLE_REDIRECT_URI', nil)
    )
  end
end
