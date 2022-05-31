
# Simple Rack App

This project just shows how a rack app works. Under `config.ru` (rackup extension) we have the basics of the rack application, where different `Rack` middlewares are specified using the `use` keyword before letting the request go to the `App.new`.

Rack is a common interface for Rack compatible servers (Thin, Puma, Unicorn...) to process request. All Rack configurations should respond to a `call` method that accepts a `env` parameter and returns three elements:

- Status Code
- Headers
- Response

For launchin the `rack` app with the default server just run:

```bash
  rackup
```

Then, run each of the servers manually by calling:

```bash
  puma | thin start | unicorn 
```

The basics for a rack app are under `basic_config.ru`. However, a more advance approach, using the `rack` gem and its middlewares, is found at `config.ru`. 