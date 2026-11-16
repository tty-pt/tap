class Libxylem < Formula
  desc "libxylem binary package"
  homepage "https://github.com/tty-pt/libxylem"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libxylem/releases/download/v1.8.1/libxylem-1.8.1-brew-arm64.tar.gz"
    sha256 "78b0dfbee99f90397282f0d9cdc2ed413ebf9cda1c8241d0eb77f1c87444c0bd"
  else
    url "https://github.com/tty-pt/libxylem/releases/download/v1.8.1/libxylem-1.8.1-brew-x86_64.tar.gz"
    sha256 "239471d30b5232ce8c10459958c617fa47efcd4674480036de5fee0426b37339"
  end
  version "1.8.1"
  depends_on "libcorm"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
