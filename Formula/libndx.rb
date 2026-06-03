class Libndx < Formula
  desc "libndx binary package"
  homepage "https://github.com/tty-pt/libndx"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndx/releases/download/v1.3.2/libndx-1.3.2-brew-arm64.tar.gz"
    sha256 "559d66557bd97a33a84ac7a610956d3a2545e605ce97f57aa822437be886cbb4"
  else
    url "https://github.com/tty-pt/libndx/releases/download/v1.3.2/libndx-1.3.2-brew-x86_64.tar.gz"
    sha256 "1f29561491949fbf057f70a02c97c10609bda09ef19d9de2c514f7b1d7c21ab8"
  end
  version "1.3.2"
  depends_on "libqmap"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
