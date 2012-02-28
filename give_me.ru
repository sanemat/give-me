require 'rack'

class GiveMe
  def self.call(env)
    location = ENV['GIVE_ME_URL'] || 'http://google.com'
    [ 301, { 'Content-Type' => 'text/html', 'Location' => location }, [] ]
  end
end

run GiveMe
