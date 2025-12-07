class Libqllm < Formula
  desc "libqllm binary package"
  homepage "https://github.com/tty-pt/libqllm"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqllm/releases/download/v0.0.1/libqllm-0.0.1-brew-arm64.tar.gz"
    sha256 "ecca3cfb0b89d9e6121118e0a2d714194a9473fdf21d23313183219c4b76c190"
  else
    url "https://github.com/tty-pt/libqllm/releases/download/v0.0.1/libqllm-0.0.1-brew-x86_64.tar.gz"
    sha256 "69590f22b0720fbe2883a8432805680eb6d6c47b2fbce9b2ad48cb7f56193c31"
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
