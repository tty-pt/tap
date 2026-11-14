class AxilAuren < Formula
  desc "axil-auren binary package"
  homepage "https://github.com/tty-pt/axil-auren"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-auren/releases/download/v1.5.0/axil-auren-1.5.0-brew-arm64.tar.gz"
    sha256 "2acce91153798c52a32de1052555d0ba9c1246fdd92f8e2c716ab5b7e8e02b6f"
  else
    url "https://github.com/tty-pt/axil-auren/releases/download/v1.5.0/axil-auren-1.5.0-brew-x86_64.tar.gz"
    sha256 "d2e9775efbe9e65a71ce19fa07f2a954628397de9863950f75ff87c7598d771b"
  end
  version "1.5.0"
  depends_on "axil"
  depends_on "libxylem"
  depends_on "libstele"
  depends_on "libcorm"
  depends_on "libsepal"
  depends_on "cmake"
  depends_on "libomp"
  depends_on "json-c"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
