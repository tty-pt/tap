class Libqmap < Formula
  desc "libqmap binary package"
  homepage "https://github.com/tty-pt/xxHash"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/xxHash/releases/download/v0.8.3/libqmap-0.8.3-brew-arm64.tar.gz"
    sha256 "a97cfc01cfdfdfef345790741dc55104033abf0df1d8493bea54ab5ec277e814"
  else
    url "https://github.com/tty-pt/xxHash/releases/download/v0.8.3/libqmap-0.8.3-brew-x86_64.tar.gz"
    sha256 "8fd77ffd62f596cecec31dfd85f47fd398ba20d2bbfb80434ded3066b8497814"
  end
  version "0.8.3"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
