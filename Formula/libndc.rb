class Libndc < Formula
  desc "libndc binary package"
  homepage "https://github.com/tty-pt/libndc"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndc/releases/download/v0.17.0/libndc-0.17.0-brew-arm64.tar.gz"
    sha256 "58ba68aa9a746488b59e410e185270870932e61b96e6d993f00725ffe84e751f"
  else
    url "https://github.com/tty-pt/libndc/releases/download/v0.17.0/libndc-0.17.0-brew-x86_64.tar.gz"
    sha256 "aa8c362e0064ff49bbfbed264a8d1e4699a2c6f9e4dd9b0847d518a905a6f2ae"
  end
  version "0.17.0"
  depends_on "libqmap"
  depends_on "libndx"
  depends_on "openssl"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
