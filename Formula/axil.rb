class Axil < Formula
  desc "axil binary package"
  homepage "https://github.com/tty-pt/axil"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil/releases/download/v1.4.0/axil-1.4.0-brew-arm64.tar.gz"
    sha256 "c98f1e37ba888a47debca8079d676f131d6257ee464c077a62388b34602b8b6c"
  else
    url "https://github.com/tty-pt/axil/releases/download/v1.4.0/axil-1.4.0-brew-x86_64.tar.gz"
    sha256 "0bc6f4af3aaf2e55e72bf9d7021d5804f7da50f792abf0091490048d926c687d"
  end
  version "1.4.0"
  depends_on "libqmap"
  depends_on "libxylem"
  depends_on "openssl"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
