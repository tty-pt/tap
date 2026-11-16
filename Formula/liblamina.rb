class Liblamina < Formula
  desc "liblamina binary package"
  homepage "https://github.com/tty-pt/liblamina"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/liblamina/releases/download/v1.1.1/liblamina-1.1.1-brew-arm64.tar.gz"
    sha256 "26fa21eaa3d62bee91731f959664751e75ebd687526eba57745eada5adbe0bfb"
  else
    url "https://github.com/tty-pt/liblamina/releases/download/v1.1.1/liblamina-1.1.1-brew-x86_64.tar.gz"
    sha256 "4ee28ff7c8b5ab5dd5820152315e0df50530bac16822a398cdcd612629df0d20"
  end
  version "1.1.1"
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
