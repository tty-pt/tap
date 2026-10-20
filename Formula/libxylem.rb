class Libxylem < Formula
  desc "libxylem binary package"
  homepage "https://github.com/tty-pt/libxylem"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libxylem/releases/download/v1.5.0/libxylem-1.5.0-brew-arm64.tar.gz"
    sha256 "3527611472351c71c0bdc1b45c627bf1c7ed1f7d9fd8c86fc178148e0bb49965"
  else
    url "https://github.com/tty-pt/libxylem/releases/download/v1.5.0/libxylem-1.5.0-brew-x86_64.tar.gz"
    sha256 "4d1ffc89348b9e97c863577ae1f35c3ab37fed3972ab16705e38ece27163a68a"
  end
  version "1.5.0"
  depends_on "libcorm"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
