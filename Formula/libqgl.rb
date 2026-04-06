class Libqgl < Formula
  desc "libqgl binary package"
  homepage "https://github.com/tty-pt/libqgl"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqgl/releases/download/v1.0.0/libqgl-1.0.0-brew-arm64.tar.gz"
    sha256 "eb88c0930fd6ac6920d13217ae6a9301803ba72b447f3732abfe04ed67945d4e"
  else
    url "https://github.com/tty-pt/libqgl/releases/download/v1.0.0/libqgl-1.0.0-brew-x86_64.tar.gz"
    sha256 "7dc7eb17a0ae2a0f13825da06a539e90ed797ce3bf2da974127a50834e94c189"
  end
  version "1.0.0"
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
