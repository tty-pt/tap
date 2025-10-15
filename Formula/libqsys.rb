class Libqsys < Formula
  desc "libqsys binary package"
  homepage "https://github.com/tty-pt/libqsys"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqsys/releases/download/v0.0.12/libqsys-0.0.12-brew-arm64.tar.gz"
    sha256 "6dd74f8a74f18f2a3d06219c1b90efa3884b63c59ccfee547f5385ce7fdb0f91"
  else
    url "https://github.com/tty-pt/libqsys/releases/download/v0.0.12/libqsys-0.0.12-brew-x86_64.tar.gz"
    sha256 "4906d1c6b4c725840bf5ccb273b98b64a90c0e04689dcb896b380f85449a1bf5"
  end
  version "0.0.12"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
