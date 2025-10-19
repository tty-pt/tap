class Libndc < Formula
  desc "libndc binary package"
  homepage "https://github.com/tty-pt/libndc"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndc/releases/download/v0.17.0/libndc-0.17.0-brew-arm64.tar.gz"
    sha256 "b2f490dd2cb3f2c371fdda92743fd4a6ed35aae43e0e38f643e347348cd160a8"
  else
    url "https://github.com/tty-pt/libndc/releases/download/v0.17.0/libndc-0.17.0-brew-x86_64.tar.gz"
    sha256 "894850ae3f85c92315b63fc1dc41639cd665d9ece6c8208340aa1855043fc71f"
  end
  version "0.17.0"
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
