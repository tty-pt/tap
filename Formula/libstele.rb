class Libstele < Formula
  desc "libstele binary package"
  homepage "https://github.com/tty-pt/libstele"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libstele/releases/download/v1.5.0/libstele-1.5.0-brew-arm64.tar.gz"
    sha256 "d06b42295e0426ab91b77cc6a444d9ac7fbefdd8421cc488f58a62d1c999686a"
  else
    url "https://github.com/tty-pt/libstele/releases/download/v1.5.0/libstele-1.5.0-brew-x86_64.tar.gz"
    sha256 "7a8963971390c8df503f8b381b3ac8cc57ccc03cc361d59e74f0711f4f1b44c6"
  end
  version "1.5.0"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
