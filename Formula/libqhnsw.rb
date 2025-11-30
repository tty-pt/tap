class Libqhnsw < Formula
  desc "libqhnsw binary package"
  homepage "https://github.com/tty-pt/qhnsw"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/qhnsw/releases/download/v0.0.1/libqhnsw-0.0.1-brew-arm64.tar.gz"
    sha256 "ad72b21c90b9233b6711ff93774001f413077b2259618b0665a3ce2006d715c9"
  else
    url "https://github.com/tty-pt/qhnsw/releases/download/v0.0.1/libqhnsw-0.0.1-brew-x86_64.tar.gz"
    sha256 "131f2a8c39c8df29de691e41e1a074741acb154f87c5314e643e3f74a762e088"
  end
  version "0.0.1"
  depends_on "openblas"
  depends_on "gflags"
  depends_on "cmake"
  depends_on "libomp"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
