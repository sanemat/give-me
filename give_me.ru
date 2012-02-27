require 'rack'

class GiveMe
  def call(env)
    location = ENV['GIVE_ME_URL'] ||= 'http://google.com'
    [ %s!Moved Permanently!, { Content-Type: 'text/html', Location: location }, [] ]
  end
end

run GiveMe
