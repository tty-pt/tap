class Libndc < Formula
  desc "libndc binary package"
  homepage "https://github.com/tty-pt/libndc"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndc/releases/download/v0.18.3/libndc-0.18.3-brew-arm64.tar.gz"
    sha256 "0c481b6783db3814f800119f2e3b329696afd4c930ed7e07610d9eb7fa0d42ef"
  else
    url "https://github.com/tty-pt/libndc/releases/download/v0.18.3/libndc-0.18.3-brew-x86_64.tar.gz"
    sha256 "1542d925c7c73a5ddf3e3311f08b4586014cea0de58c097de79a76c8cf7d0065"
  end
  version "0.18.3"
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
