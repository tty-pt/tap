class Axil-auth < Formula
  desc "axil-auth binary package"
  homepage "https://github.com/tty-pt/axil-auth"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-auth/releases/download/v1.1.0/axil-auth-1.1.0-brew-arm64.tar.gz"
    sha256 "9e6aef56bab88c766bc9c0caa9a0e1505b72804ca5f12ad5e3e8e8b6ad1dd722"
  else
    url "https://github.com/tty-pt/axil-auth/releases/download/v1.1.0/axil-auth-1.1.0-brew-x86_64.tar.gz"
    sha256 "1d6e1e89d97b10dd7dc4a670f972a5577a190efc0517fc0ec9eaa93dafe0af67"
  end
  version "1.1.0"
  depends_on "axil"
  depends_on "libqmap"
  depends_on "libxylem"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
