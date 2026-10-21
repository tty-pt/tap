class Libqllm < Formula
  desc "libqllm binary package"
  homepage "https://github.com/tty-pt/axil-auren"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-auren/releases/download/v1.0.0/libqllm-1.0.0-brew-arm64.tar.gz"
    sha256 "8438e8b3102a54a1a1a5a2a715686d285008b03e6235aa87421ad6cb069718de"
  else
    url "https://github.com/tty-pt/axil-auren/releases/download/v1.0.0/libqllm-1.0.0-brew-x86_64.tar.gz"
    sha256 "276d214e08c7bf7684089006e6de7d020c8ca91170edbe2b14deb90a30b7ffc4"
  end
  version "1.0.0"
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
