class AxilAuren < Formula
  desc "axil-auren binary package"
  homepage "https://github.com/tty-pt/axil-auren"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-auren/releases/download/v1.3.1/axil-auren-1.3.1-brew-arm64.tar.gz"
    sha256 "3c67edc4a3cde57eb9a12227c97f67d9a6bd72c7cf8692bfc002493f8f18687c"
  else
    url "https://github.com/tty-pt/axil-auren/releases/download/v1.3.1/axil-auren-1.3.1-brew-x86_64.tar.gz"
    sha256 "e639d30250911e6091a1a37e54be2d13f4a799e7561378979e9b59228c74aed3"
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
