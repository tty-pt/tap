class AxilTty < Formula
  desc "axil-tty binary package"
  homepage "https://github.com/tty-pt/axil-tty"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-tty/releases/download/v1.2.0/axil-tty-1.2.0-brew-arm64.tar.gz"
    sha256 "2d50c3547f6c3d3b86004b822dd9a5c4b0d5e5d6ab29d360877abae8201b0ee6"
  else
    url "https://github.com/tty-pt/axil-tty/releases/download/v1.2.0/axil-tty-1.2.0-brew-x86_64.tar.gz"
    sha256 "31cd26efc0eb2f24ef8b3e87d6e30e953ed647b5dc47e6872c4eeead09d44f0b"
  end
  version "1.2.0"
  depends_on "axil"
  depends_on "libxylem"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
