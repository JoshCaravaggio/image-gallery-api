class AuthenticateClient
    prepend SimpleCommand
  
    def initialize(client_key)
      @client_key = client_key
    end
  
    def call
      JsonWebToken.encode(client_key: client.client_key) if client
    end
  
    private
  
    attr_accessor :client_key
  
    def client

      client = Client.find_by(client_key: client_key)
      return client if client && client.authenticate(client_key)
  
      errors.add :client_authentication, 'invalid client key'
      nil
    end
end