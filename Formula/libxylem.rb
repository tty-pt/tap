class Libxylem < Formula
  desc "libxylem binary package"
  homepage "https://github.com/tty-pt/libxylem"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libxylem/releases/download/v1.4.0/libxylem-1.4.0-brew-arm64.tar.gz"
    sha256 "a4de1baf1802b07359f8618dd3abb36a966ed2a1ee22c17fb2611b20befe6845"
  else
    url "https://github.com/tty-pt/libxylem/releases/download/v1.4.0/libxylem-1.4.0-brew-x86_64.tar.gz"
    sha256 "d31b3e6b55b20c89c3a1cf0cc240b14bc3ba9beea6243cd254d19994dea6135d"
  end
  version "1.4.0"
  depends_on "libcorm"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
