class Libqsys < Formula
  desc "libqsys binary package"
  homepage "https://github.com/tty-pt/libqsys"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqsys/releases/download/v0.1.0/libqsys-0.1.0-brew-arm64.tar.gz"
    sha256 "26037b576f5c82572771059f053493f678fac47e183c026a629e2ffc7a175ce5"
  else
    url "https://github.com/tty-pt/libqsys/releases/download/v0.1.0/libqsys-0.1.0-brew-x86_64.tar.gz"
    sha256 "e0eac6d1d53808b4047851c9e5c0d2544591ee56a7a52ee6a3729c3a355279ce"
  end
  version "0.1.0"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
