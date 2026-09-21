class Libxylem < Formula
  desc "libxylem binary package"
  homepage "https://github.com/tty-pt/libxylem"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libxylem/releases/download/v1.4.0/libxylem-1.4.0-brew-arm64.tar.gz"
    sha256 "7346d7ee19b02f7dae15f191d0d5e13659d135575a28475a8be3977b5becf888"
  else
    url "https://github.com/tty-pt/libxylem/releases/download/v1.4.0/libxylem-1.4.0-brew-x86_64.tar.gz"
    sha256 "4b74c88d49787266c3cbf43098e19a5b3014fb6b3b19e74e42bca1ea0b27b307"
  end
  version "1.4.0"
  depends_on "libqmap"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
