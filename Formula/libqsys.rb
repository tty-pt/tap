class Libqsys < Formula
  desc "libqsys binary package"
  homepage "https://github.com/tty-pt/libqsys"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqsys/releases/download/v1.3.1/libqsys-1.3.1-brew-arm64.tar.gz"
    sha256 "f25ca1b5267e02c7c4be6f9b9de4f2d927d905fa1049d8a8d359fa35bcd4e98b"
  else
    url "https://github.com/tty-pt/libqsys/releases/download/v1.3.1/libqsys-1.3.1-brew-x86_64.tar.gz"
    sha256 "ee72a342a9ca6c6cfff44ad003cb362978bbb5fcef261e9c5e4c6249b32bb662"
  end
  version "1.3.1"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
