class Libqsys < Formula
  desc "libqsys binary package"
  homepage "https://github.com/tty-pt/libqsys"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqsys/releases/download/v0.1.0/libqsys-0.1.0-brew-arm64.tar.gz"
    sha256 "aec64a4e3f9657677589f8e6be9f12a5ac64b9c35670bfbd1d82a749c202e58d"
  else
    url "https://github.com/tty-pt/libqsys/releases/download/v0.1.0/libqsys-0.1.0-brew-x86_64.tar.gz"
    sha256 "14cb06ef2aaaa092edb8ac60af76ddb880ae3ff517880780945d0a242cd08ba3"
  end
  version "0.1.0"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
