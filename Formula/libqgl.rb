class Libqgl < Formula
  desc "libqgl binary package"
  homepage "https://github.com/tty-pt/libqgl"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqgl/releases/download/v1.1.0/libqgl-1.1.0-brew-arm64.tar.gz"
    sha256 "3fc2fc735e1e5ca639f60415cf1ce3878be8f246de870aa83617d08ad72a87fe"
  else
    url "https://github.com/tty-pt/libqgl/releases/download/v1.1.0/libqgl-1.1.0-brew-x86_64.tar.gz"
    sha256 "ec55bbe1af87eb347caa0df573b6cd52111da98db84afd0b4131f5c3c17293ee"
  end
  version "1.1.0"
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
