class Libqsys < Formula
  desc "libqsys binary package"
  homepage "https://github.com/tty-pt/libqsys"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqsys/releases/download/v1.0.1/libqsys-1.0.1-brew-arm64.tar.gz"
    sha256 "8d716e46218b321f982dd3e923b60809e4a0c11fcb27c4614cf6f992bef85405"
  else
    url "https://github.com/tty-pt/libqsys/releases/download/v1.0.1/libqsys-1.0.1-brew-x86_64.tar.gz"
    sha256 "b7cf2711d42e0eb5e5e8f9307f1532eac7d5fbc303d09553a72476296da1cfb8"
  end
  version "1.0.1"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
