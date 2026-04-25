class Libndx < Formula
  desc "libndx binary package"
  homepage "https://github.com/tty-pt/libndx"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndx/releases/download/v1.2.1/libndx-1.2.1-brew-arm64.tar.gz"
    sha256 "17a64806a12563f27156dfc41a718a549d6672363f55c8c9c7dcbede8e0d994a"
  else
    url "https://github.com/tty-pt/libndx/releases/download/v1.2.1/libndx-1.2.1-brew-x86_64.tar.gz"
    sha256 "3b786d12eddb36e732c784f7b84a3db77d6122493fd458679342048aca6ce8ac"
  end
  version "1.2.1"
  depends_on "libqmap"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
