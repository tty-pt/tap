class AxilAuren < Formula
  desc "axil-auren binary package"
  homepage "https://github.com/tty-pt/axil-auren"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-auren/releases/download/v1.4.0/axil-auren-1.4.0-brew-arm64.tar.gz"
    sha256 "56784709e4727d98c1a60b19ebe0351bc725246eb2a9b615da2a51575477dd6f"
  else
    url "https://github.com/tty-pt/axil-auren/releases/download/v1.4.0/axil-auren-1.4.0-brew-x86_64.tar.gz"
    sha256 "aa7e8e05cc409011f6d37eb4a31cd508ffea734dadd41a97cf12751f8f078671"
  end
  version "1.4.0"
  depends_on "axil"
  depends_on "libxylem"
  depends_on "libqsys"
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
