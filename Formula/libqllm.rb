class Libqllm < Formula
  desc "libqllm binary package"
  homepage "https://github.com/tty-pt/libqllm"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqllm/releases/download/v0.0.1/libqllm-0.0.1-brew-arm64.tar.gz"
    sha256 "09cd06d34312ec561965bff1b202693e25410e751f2374886d7e3815710f5c62"
  else
    url "https://github.com/tty-pt/libqllm/releases/download/v0.0.1/libqllm-0.0.1-brew-x86_64.tar.gz"
    sha256 "6c13543dbdbabd36ce5f04bf64d6e29317bacfe6e62dc83aea727bfb30fe737e"
  end
  version "0.0.1"
  depends_on "libqsys"
  depends_on "libqmap"
  depends_on "cmake"
  depends_on "libomp"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
