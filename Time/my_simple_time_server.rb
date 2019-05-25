# frozen_string_literal: true

require 'socket'

class MySimpleTimeServer
  def start
    server = UDPSocket.open
    server.bind nil, 12_321
    loop do
      text, sender = server.recvfrom(1)
      server.send("#{Time.now}\n", 0, sender[3], sender[1])
    end
  end
end
