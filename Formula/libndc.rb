class Libndc < Formula
  desc "libndc binary package"
  homepage "https://github.com/tty-pt/libndc"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndc/releases/download/v0.15.0/libndc-0.15.0-macos-arm64.tar.gz"
    sha256 "e8f4c92687442c107500879186ba54d2252f67df7ccc8889d6bd24a305894d7d"
  else
    url "https://github.com/tty-pt/libndc/releases/download/v0.15.0/libndc-0.15.0-macos-x86_64.tar.gz"
    sha256 "1e2e1341521d8302d99afbf3c0ed401b9b471da7598217124796b7d62f2a25a6"
  end
  version "0.15.0"
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
