class Libndc < Formula
  desc "libndc binary package"
  homepage "https://github.com/tty-pt/libndc"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndc/releases/download/v0.18.0/libndc-0.18.0-brew-arm64.tar.gz"
    sha256 "e9665cf21e5db4d24bab66e086ef4c6b7bfd1465e4af8f6927155cf89e744269"
  else
    url "https://github.com/tty-pt/libndc/releases/download/v0.18.0/libndc-0.18.0-brew-x86_64.tar.gz"
    sha256 "9d3af1001d08c45ef3f15d32a8fd480bf8ebf21f01c6f15615fc8cff877199fb"
  end
  version "0.18.0"
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
