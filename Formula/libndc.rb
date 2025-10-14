class Libndc < Formula
  desc "libndc binary package"
  homepage "https://github.com/tty-pt/libndc"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndc/releases/download/v0.15.2/libndc-0.15.2-macos-arm64.tar.gz"
    sha256 "f13b79176c506192b8307cfb5aa55b799447db97dfc30e19a8f275af11362bc9"
  else
    url "https://github.com/tty-pt/libndc/releases/download/v0.15.2/libndc-0.15.2-macos-x86_64.tar.gz"
    sha256 "7009da37ecce0b4037b98ddbd0cd7f0a89e8d5b08689c4691d07948ebb1f3377"
  end
  version "0.15.2"
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
