class Liblemma < Formula
  desc "liblemma binary package"
  homepage "https://github.com/tty-pt/liblemma"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/liblemma/releases/download/v1.4.1/liblemma-1.4.1-brew-arm64.tar.gz"
    sha256 "795ab8aa3af70055716b04014405d7038d3e939ae1dbad8cc5ddfe85a650e004"
  else
    url "https://github.com/tty-pt/liblemma/releases/download/v1.4.1/liblemma-1.4.1-brew-x86_64.tar.gz"
    sha256 "67b1590730132ba67553dbfcc28b9db0cd2c3477a6d2e071523a6b2c8f779711"
  end
  version "1.4.1"
  depends_on "libcorm"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
