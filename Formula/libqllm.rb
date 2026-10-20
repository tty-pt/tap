class Libqllm < Formula
  desc "libqllm binary package"
  homepage "https://github.com/tty-pt/axil-auren"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-auren/releases/download/v1.0.0/libqllm-1.0.0-brew-arm64.tar.gz"
    sha256 "f0bf9277714d45085724a92ad3c68be98fdb1f3ec9fd7461b1ee966da476988d"
  else
    url "https://github.com/tty-pt/axil-auren/releases/download/v1.0.0/libqllm-1.0.0-brew-x86_64.tar.gz"
    sha256 "bcfd4e6f55857089f139bb493670efb4094ec3b8a54b1709de55826d06f5bacd"
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
