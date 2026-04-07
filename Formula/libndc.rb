class Libndc < Formula
  desc "libndc binary package"
  homepage "https://github.com/tty-pt/libndc"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndc/releases/download/v1.0.3/libndc-1.0.3-brew-arm64.tar.gz"
    sha256 "a2d278b7c848d638949744e594f2920079d9860c6fc926b4f4e0e8daec93d777"
  else
    url "https://github.com/tty-pt/libndc/releases/download/v1.0.3/libndc-1.0.3-brew-x86_64.tar.gz"
    sha256 "236ac323a6f7357b5490da41b3f9b74817e8ae7af9cacfcd624598b8616cc79f"
  end
  version "1.0.3"
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
