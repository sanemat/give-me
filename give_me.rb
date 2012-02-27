require 'rack'

class GiveMe
  def call(env)
    [ %s!Moved Permanently!, { Content-Type: 'text/html', Location: 'http://google.com' }, [] ]
  end
end
