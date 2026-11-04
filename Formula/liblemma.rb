class Liblemma < Formula
  desc "liblemma binary package"
  homepage "https://github.com/tty-pt/liblemma"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/liblemma/releases/download/v1.2.2/liblemma-1.2.2-brew-arm64.tar.gz"
    sha256 "8c18a36a2652822873393a402cf8ac8a8611f516f1ee4fb2e4d73a2325720d17"
  else
    url "https://github.com/tty-pt/liblemma/releases/download/v1.2.2/liblemma-1.2.2-brew-x86_64.tar.gz"
    sha256 "3c0d83cfadaa548874fbefa8952cd0323c52c6a7b99f7f8660b6dcf479a7c778"
  end
  version "1.2.2"
  depends_on "libcorm"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
