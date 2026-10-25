class Libqllm < Formula
  desc "libqllm binary package"
  homepage "https://github.com/tty-pt/axil-auren"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-auren/releases/download/v1.2.0/libqllm-1.2.0-brew-arm64.tar.gz"
    sha256 "fd25a46cc1f1bb7c69931294f7600773b417e746f101156dc490fa18903dab7b"
  else
    url "https://github.com/tty-pt/axil-auren/releases/download/v1.2.0/libqllm-1.2.0-brew-x86_64.tar.gz"
    sha256 "16da5d362002b550093733159cfc997d93882badfbb33dccce68f9418e9c3f41"
  end
  version "1.2.0"
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
