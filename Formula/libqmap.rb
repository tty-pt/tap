class Libqmap < Formula
  desc "libqmap binary package"
  homepage "https://github.com/tty-pt/libqmap"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqmap/releases/download/v0.1.3/libqmap-0.1.3-brew-arm64.tar.gz"
    sha256 "2d3ecb311320b09d8fb0c5b41b228965fde9ddffda0387fcd3be05ffb19c6084"
  else
    url "https://github.com/tty-pt/libqmap/releases/download/v0.1.3/libqmap-0.1.3-brew-x86_64.tar.gz"
    sha256 "80e0ef507ed58db8a782ab8bc1f5e02f8fbd3a567b84f8c6cdbed20e8a097f53"
  end
  version "0.1.3"
  depends_on "libqsys"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
