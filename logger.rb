class Logger 
  def initialize(app)
    @app = app
  end

  def call(env)
    puts 'Incoming request received'

    # forward the request to the next middleware app

    status, headers, body = @app.call(env)

    puts 'Outgoing response received'

    [status, headers, body]
  end
end