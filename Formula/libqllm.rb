class Libqllm < Formula
  desc "libqllm binary package"
  homepage "https://github.com/tty-pt/libqllm"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqllm/releases/download/v1.0.0/libqllm-1.0.0-brew-arm64.tar.gz"
    sha256 "7495cbdab2c55fb6694c43d4f8a90d144d75a4594067b628e16c4c25461e4769"
  else
    url "https://github.com/tty-pt/libqllm/releases/download/v1.0.0/libqllm-1.0.0-brew-x86_64.tar.gz"
    sha256 "5c48c90bf8ab2658c42a6a7e436e17e2242926af5abca4733dafa10d6120f96f"
  end
  version "1.0.0"
  depends_on "libqsys"
  depends_on "libqmap"
  depends_on "libndc"
  depends_on "cmake"
  depends_on "libomp"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
