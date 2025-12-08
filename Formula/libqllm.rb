class Libqllm < Formula
  desc "libqllm binary package"
  homepage "https://github.com/tty-pt/libqllm"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqllm/releases/download/v0.0.1/libqllm-0.0.1-brew-arm64.tar.gz"
    sha256 "b8aa72fafc5d732f25bdbccab07c0a7a09a21f2b93fa04fc841cade978ba1678"
  else
    url "https://github.com/tty-pt/libqllm/releases/download/v0.0.1/libqllm-0.0.1-brew-x86_64.tar.gz"
    sha256 "310bfaab17f97b319af4972badd3f8ad4f9bb941f3fbc183233330bb6b0cbb91"
  end
  version "0.0.1"
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
