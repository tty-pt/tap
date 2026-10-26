class Libqsys < Formula
  desc "libqsys binary package"
  homepage "https://github.com/tty-pt/libqsys"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqsys/releases/download/v1.4.0/libqsys-1.4.0-brew-arm64.tar.gz"
    sha256 "ebe0334b2b70804aad5ca5e9fc5811aeba7426476ab1b4d5c78e045eaa243305"
  else
    url "https://github.com/tty-pt/libqsys/releases/download/v1.4.0/libqsys-1.4.0-brew-x86_64.tar.gz"
    sha256 "28782e691cab2a81f1d19112984fba8d74c7c9135fc69da3e247df275a105ef4"
  end
  version "1.4.0"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
