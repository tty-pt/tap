class AxilAuren < Formula
  desc "axil-auren binary package"
  homepage "https://github.com/tty-pt/axil-auren"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-auren/releases/download/v1.3.0/axil-auren-1.3.0-brew-arm64.tar.gz"
    sha256 "55af4a87d34a7dbb1c94fed339d085286a3ce3dd9776cfe7a100367d85bab4c1"
  else
    url "https://github.com/tty-pt/axil-auren/releases/download/v1.3.0/axil-auren-1.3.0-brew-x86_64.tar.gz"
    sha256 "a2180982f6fc86633df39e3fcb9c20055293bf9e600ebcc5f3d84b9547769d19"
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
