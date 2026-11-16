class AxilAuren < Formula
  desc "axil-auren binary package"
  homepage "https://github.com/tty-pt/axil-auren"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-auren/releases/download/v1.5.2/axil-auren-1.5.2-brew-arm64.tar.gz"
    sha256 "dcba21e477a230cb09095eadf38ab80c46784720ea8fa8dbd8754d7a01902536"
  else
    url "https://github.com/tty-pt/axil-auren/releases/download/v1.5.2/axil-auren-1.5.2-brew-x86_64.tar.gz"
    sha256 "4775917e5061bdf5162dab88ab917eb09f0ad9a4621037c5dab762f9e57af538"
  end
  version "1.5.2"
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
