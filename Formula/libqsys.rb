class Libqsys < Formula
  desc "libqsys binary package"
  homepage "https://github.com/tty-pt/libqsys"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqsys/releases/download/v0.0.11/libqsys-0.0.11-brew-arm64.tar.gz"
    sha256 "dfd8ce76aa4f022ec7dcf47cc8bf1ba162260df3a43e6be99d4096711b6c198f"
  else
    url "https://github.com/tty-pt/libqsys/releases/download/v0.0.11/libqsys-0.0.11-brew-x86_64.tar.gz"
    sha256 "0e37a1599bc4f4d135e3171161fd2993654fd8e27733ac861fca3bf2c3dfc4be"
  end
  version "0.0.11"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
