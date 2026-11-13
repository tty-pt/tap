class Libjoint < Formula
  desc "libjoint binary package"
  homepage "https://github.com/tty-pt/libjoint"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libjoint/releases/download/v1.7.3/libjoint-1.7.3-brew-arm64.tar.gz"
    sha256 "7cd687368c7812423f8520847ab191bb721f44ede3f43f31261e6fcd5a09e4da"
  else
    url "https://github.com/tty-pt/libjoint/releases/download/v1.7.3/libjoint-1.7.3-brew-x86_64.tar.gz"
    sha256 "19e1d77dc4a0e899a79a6e2b1ee56c55d295abe3261b729c8be89b1ba3f4239a"
  end
  version "1.7.3"
  depends_on "libcorm"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
