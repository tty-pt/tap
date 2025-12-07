class Libqllm < Formula
  desc "libqllm binary package"
  homepage "https://github.com/tty-pt/libqllm"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqllm/releases/download/v0.0.1/libqllm-0.0.1-brew-arm64.tar.gz"
    sha256 "cb01965133b71b4277159ffbfb53fde76e1c2a3d656106e862b6b2424819e15c"
  else
    url "https://github.com/tty-pt/libqllm/releases/download/v0.0.1/libqllm-0.0.1-brew-x86_64.tar.gz"
    sha256 "f648414539be254e5c9e4af92704b865243263db8c0717e4310ca4f2a01ae9e3"
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
