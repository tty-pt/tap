class Libqgl < Formula
  desc "libqgl binary package"
  homepage "https://github.com/tty-pt/libqgl"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqgl/releases/download/v0.0.1/libqgl-0.0.1-brew-arm64.tar.gz"
    sha256 "a4141e0046b48b381fa69ea1e5d34ca8b6247667e52d24aa5479a0119eec6622"
  else
    url "https://github.com/tty-pt/libqgl/releases/download/v0.0.1/libqgl-0.0.1-brew-x86_64.tar.gz"
    sha256 "ba517fd6ef28e7bb2052b6bf40bba5eea5f3931f302672c55f6256578c8e76eb"
  end
  version "0.0.1"
  depends_on "libqmap"
  depends_on "glfw"
  depends_on "libpng"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
