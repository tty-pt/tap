class Libqsys < Formula
  desc "libqsys binary package"
  homepage "https://github.com/tty-pt/libqsys"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqsys/releases/download/v1.2.1/libqsys-1.2.1-brew-arm64.tar.gz"
    sha256 "a08c9c58f076716f1c3b69ae7529e89d28e6ada48ff00a0e8756fcfde522fde5"
  else
    url "https://github.com/tty-pt/libqsys/releases/download/v1.2.1/libqsys-1.2.1-brew-x86_64.tar.gz"
    sha256 "c3386725a6817d2a28634711c602028923c8aacf556acc69d22c476e4e30b9e9"
  end
  version "1.2.1"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
