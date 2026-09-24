class Libislet < Formula
  desc "libislet binary package"
  homepage "https://github.com/tty-pt/libislet"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libislet/releases/download/v1.1.0/libislet-1.1.0-brew-arm64.tar.gz"
    sha256 "5fac6f70b2c6fa3a5806bb880b4e7989d2361086e0cead8987ab5bc13acc8304"
  else
    url "https://github.com/tty-pt/libislet/releases/download/v1.1.0/libislet-1.1.0-brew-x86_64.tar.gz"
    sha256 "ec11d2351fc10c1e4831cbd91733bbf7c7d2534f0d787e175dab298b9e005a7d"
  end
  version "1.1.0"
  depends_on "libqsys"
  depends_on "libcorm"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
