class Libqllm < Formula
  desc "libqllm binary package"
  homepage "https://github.com/tty-pt/libqllm"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqllm/releases/download/v1.1.0/libqllm-1.1.0-brew-arm64.tar.gz"
    sha256 "8178c3ecce2fb2c2e62079c60b940dea65115c414aa31d8730ff143e613e4233"
  else
    url "https://github.com/tty-pt/libqllm/releases/download/v1.1.0/libqllm-1.1.0-brew-x86_64.tar.gz"
    sha256 "29eb9f61b86e022b972345eb0f4b711e022d4a993a0095620e3ace02c2714697"
  end
  version "1.1.0"
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
