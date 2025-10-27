class Libndc < Formula
  desc "libndc binary package"
  homepage "https://github.com/tty-pt/libndc"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndc/releases/download/v0.18.1/libndc-0.18.1-brew-arm64.tar.gz"
    sha256 "71a1db1501e90254a018c14a3c74ad039e6443c507e76147275fabd33dc98c7e"
  else
    url "https://github.com/tty-pt/libndc/releases/download/v0.18.1/libndc-0.18.1-brew-x86_64.tar.gz"
    sha256 "e7a2f4fe0885191cea9332a85cba53f35314d3e1d2d28b0e64518ff6bb602575"
  end
  version "0.18.1"
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
