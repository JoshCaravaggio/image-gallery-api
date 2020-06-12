class AuthenticationController < ApplicationController
    skip_before_action :authenticate_request
   
    def authenticate
    
        puts "Client key passed in: #{params[:client_key]}"
      command = AuthenticateClient.call(params[:client_key])
   
      if command.success?
        render json: { auth_token: command.result }
      else
        render json: { error: command.errors }, status: :unauthorized
      end
    end
   end