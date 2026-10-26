class AxilAuren < Formula
  desc "axil-auren binary package"
  homepage "https://github.com/tty-pt/axil-auren"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-auren/releases/download/v1.3.0/axil-auren-1.3.0-brew-arm64.tar.gz"
    sha256 "19dde0b069322f694a097d29ac4db1ef7943e97ab77581b24ac2dc081eb496d0"
  else
    url "https://github.com/tty-pt/axil-auren/releases/download/v1.3.0/axil-auren-1.3.0-brew-x86_64.tar.gz"
    sha256 "b8912c248acbe6a6e5e1ffcece5e127e49e38eb99711b842d1018f0a103b09bb"
  end
  version "1.3.0"
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
