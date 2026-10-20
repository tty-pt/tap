class AxilTty < Formula
  desc "axil-tty binary package"
  homepage "https://github.com/tty-pt/axil-tty"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-tty/releases/download/v1.3.2/axil-tty-1.3.2-brew-arm64.tar.gz"
    sha256 "7c676363cb10072ac8a7d88b9f155cb20737d840fdfc8865d37fbb765c40db60"
  else
    url "https://github.com/tty-pt/axil-tty/releases/download/v1.3.2/axil-tty-1.3.2-brew-x86_64.tar.gz"
    sha256 "c8bf407a470bc1fc2270f0053212545dfa53787b94e8f96023cdbe659309efef"
  end
  version "1.3.2"
  depends_on "axil"
  depends_on "libxylem"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
