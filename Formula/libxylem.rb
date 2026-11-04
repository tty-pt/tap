class Libxylem < Formula
  desc "libxylem binary package"
  homepage "https://github.com/tty-pt/libxylem"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libxylem/releases/download/v1.7.2/libxylem-1.7.2-brew-arm64.tar.gz"
    sha256 "947ecff641fbb0ba2733440826d2b9c24b7d85e46b0ae95abfbaa652a85b0258"
  else
    url "https://github.com/tty-pt/libxylem/releases/download/v1.7.2/libxylem-1.7.2-brew-x86_64.tar.gz"
    sha256 "7ec3f1df65443d0e75611df1fee1060ca232132c9dc5774f97d7e4c2a07975e3"
  end
  version "1.7.2"
  depends_on "libcorm"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
