class Libqsys < Formula
  desc "libqsys binary package"
  homepage "https://github.com/tty-pt/libqsys"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqsys/releases/download/v1.2.0/libqsys-1.2.0-brew-arm64.tar.gz"
    sha256 "c388f19b9926547dd2d92e6874aec5aad9f2b4e6f332f8994a5400b9f9373b61"
  else
    url "https://github.com/tty-pt/libqsys/releases/download/v1.2.0/libqsys-1.2.0-brew-x86_64.tar.gz"
    sha256 "fdc4849d2d93271c00415da46e9ccfe13493485a9653a4c283d918df88f7a5b4"
  end
  version "1.2.0"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
