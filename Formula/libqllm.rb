class Libqllm < Formula
  desc "libqllm binary package"
  homepage "https://github.com/tty-pt/libqllm"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqllm/releases/download/v0.0.2/libqllm-0.0.2-brew-arm64.tar.gz"
    sha256 "3f62903835ca029dcfca8cc7e1ff3fb402f74b94e6556bbb9fd945376bf385bc"
  else
    url "https://github.com/tty-pt/libqllm/releases/download/v0.0.2/libqllm-0.0.2-brew-x86_64.tar.gz"
    sha256 "3bcf32d7e1eff1a349c1b7e328de34428ab4481f6b586d870259f16ededd4130"
  end
  version "0.0.2"
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
