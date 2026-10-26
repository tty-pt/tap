class AxilTty < Formula
  desc "axil-tty binary package"
  homepage "https://github.com/tty-pt/axil-tty"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-tty/releases/download/v1.5.0/axil-tty-1.5.0-brew-arm64.tar.gz"
    sha256 "ca833777ec24edcc556c10a31916d012caea4c6d8a5c0ac32be4899eec4ec8ad"
  else
    url "https://github.com/tty-pt/axil-tty/releases/download/v1.5.0/axil-tty-1.5.0-brew-x86_64.tar.gz"
    sha256 "e3abb2551375c49fc446caa5a9b8bfab3d51554ea54245100156f81a7da84d81"
  end
  version "1.5.0"
  depends_on "axil"
  depends_on "libxylem"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
