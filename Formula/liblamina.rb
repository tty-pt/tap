class Liblamina < Formula
  desc "liblamina binary package"
  homepage "https://github.com/tty-pt/liblamina"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/liblamina/releases/download/v1.1.0/liblamina-1.1.0-brew-arm64.tar.gz"
    sha256 "43ec886a3a2a5f7dae816e52839ad13938d84bb3461ceaf086f0227bc803a9e5"
  else
    url "https://github.com/tty-pt/liblamina/releases/download/v1.1.0/liblamina-1.1.0-brew-x86_64.tar.gz"
    sha256 "e5f33642e0ec03a67220788fed57ec2a011f456f1e9cf99186472f987b68f6c5"
  end
  version "1.1.0"
  depends_on "libstele"
  depends_on "libcorm"
  depends_on "glfw"
  depends_on "libpng"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
