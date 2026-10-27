class AxilAuren < Formula
  desc "axil-auren binary package"
  homepage "https://github.com/tty-pt/axil-auren"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-auren/releases/download/v1.3.1/axil-auren-1.3.1-brew-arm64.tar.gz"
    sha256 "bd40278cd629c1f8974368ad9433d40be87495aff8bb4af268cf1b1e0ab90d23"
  else
    url "https://github.com/tty-pt/axil-auren/releases/download/v1.3.1/axil-auren-1.3.1-brew-x86_64.tar.gz"
    sha256 "75b53a8f2a5aa1d8cbcc221bfea8af290bb7365403ebf4d2e0c424be306b2683"
  end
  version "1.3.1"
  depends_on "axil"
  depends_on "libxylem"
  depends_on "libqsys"
  depends_on "libcorm"
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
