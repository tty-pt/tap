class Libndc < Formula
  desc "libndc binary package"
  homepage "https://github.com/tty-pt/libndc"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndc/releases/download/v1.0.8/libndc-1.0.8-brew-arm64.tar.gz"
    sha256 "16831292687b25ba99ba1d41280f97fecd349057883d1c931ea367582884fedb"
  else
    url "https://github.com/tty-pt/libndc/releases/download/v1.0.8/libndc-1.0.8-brew-x86_64.tar.gz"
    sha256 "eadd25173c93a6ce60fbe3f6aa5eb2fbd6523fdf12888b6eb09dbb79d86459bc"
  end
  version "1.0.8"
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
