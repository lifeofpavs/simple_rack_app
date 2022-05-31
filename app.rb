class App
  def call(env) # This method will be called For all rack compliant servers (Thin, Unicord, Puma, ...), and will accept the env object, returning an array that contains three values:
     # - Status code 
     # - Headers
     # - Response
# “Rack provides a minimal, modular, and adaptable interface.”
    headers = {
      'Content-Type' => 'text/html'
    }

    response = ['<h1>Greetings from Rack!</h1>']

    [200, headers, response]
  end
end