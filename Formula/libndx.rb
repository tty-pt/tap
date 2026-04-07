class Libndx < Formula
  desc "libndx binary package"
  homepage "https://github.com/tty-pt/libndx"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndx/releases/download/v1.0.3/libndx-1.0.3-brew-arm64.tar.gz"
    sha256 "7d3d31d3ec997a8a3b6374af3518f9a5e9df7a07a726c1a3ff3cda04bc946ff4"
  else
    url "https://github.com/tty-pt/libndx/releases/download/v1.0.3/libndx-1.0.3-brew-x86_64.tar.gz"
    sha256 "e4b58fac1371b5f0d84befe1077f4ee0159f4f8295eac43cf9632c7c9e133963"
  end
  version "1.0.3"
  depends_on "libqmap"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
