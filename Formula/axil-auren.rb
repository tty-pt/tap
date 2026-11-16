class AxilAuren < Formula
  desc "axil-auren binary package"
  homepage "https://github.com/tty-pt/axil-auren"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-auren/releases/download/v1.5.1/axil-auren-1.5.1-brew-arm64.tar.gz"
    sha256 "10d8a9fac4849b9cbb75533fe363c818f44671c511ff275a8834e848b4842a14"
  else
    url "https://github.com/tty-pt/axil-auren/releases/download/v1.5.1/axil-auren-1.5.1-brew-x86_64.tar.gz"
    sha256 "cf1f6e94f5354af21d857471053950b16e13baf36bef2aa9f21f1c4a107b23c5"
  end
  version "1.5.1"
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
