class Libqgl < Formula
  desc "libqgl binary package"
  homepage "https://github.com/tty-pt/libqgl"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqgl/releases/download/v0.0.1/libqgl-0.0.1-brew-arm64.tar.gz"
    sha256 "01dff0a4417c0051a996e5d9da28a7f6fffba269e5d28a441ebaab774c3f1dab"
  else
    url "https://github.com/tty-pt/libqgl/releases/download/v0.0.1/libqgl-0.0.1-brew-x86_64.tar.gz"
    sha256 "d12e81a0d7924ddbcd06d6e7cc1762db8ea02e106c1a863f53aa80f4ae76ca91"
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
