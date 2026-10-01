class Libxylem < Formula
  desc "libxylem binary package"
  homepage "https://github.com/tty-pt/libxylem"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libxylem/releases/download/v1.4.2/libxylem-1.4.2-brew-arm64.tar.gz"
    sha256 "213693b28a014c42d8ca4256f1689c7f3b19e365d775ac98a2f5e8140f978f0a"
  else
    url "https://github.com/tty-pt/libxylem/releases/download/v1.4.2/libxylem-1.4.2-brew-x86_64.tar.gz"
    sha256 "cacd3ee277554625d5ee9deadc1e63c6d9942ff70d27e1c879c855a7d2139882"
  end
  version "1.4.2"
  depends_on "libcorm"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
