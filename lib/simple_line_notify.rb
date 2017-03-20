require "simple_line_notify/version"
require "faraday"

module SimpleLineNotify
  URL = 'https://notify-api.line.me/api/notify'
  def self.notify(message: nil, token: nil)
    conn = ::Faraday.new(url: URL)
    conn.authorization :Bearer, token
    response = conn.post do |req|
      req.body = {message: message}
    enda
	end
end
