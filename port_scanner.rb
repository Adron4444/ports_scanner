require "socket"

PORT = ARGV[0] || 22

HOST = ARGV[1] || 'localhost'

begin
  socket = TCPSocket.new(HOST, PORT)
  status = 'open'
rescue Errno::ECONNREFUSED, Errno::ETIMEDOUT
  status = 'close'
end

puts("Port #{PORT} is #{status} in #{HOST}")
