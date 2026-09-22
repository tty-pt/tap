class Libstoma < Formula
  desc "libstoma binary package"
  homepage "https://github.com/tty-pt/libstoma"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libstoma/releases/download/v1.0.0/libstoma-1.0.0-brew-arm64.tar.gz"
    sha256 "5a1f9b1db00849e835802a081d818949c2dc8b2739d5f87f65dbe6a717e252d1"
  else
    url "https://github.com/tty-pt/libstoma/releases/download/v1.0.0/libstoma-1.0.0-brew-x86_64.tar.gz"
    sha256 "6416a3310bfb85a8c854be3dcde5270bf6fc5d99f93b9180e678f8494b6b6052"
  end
  version "1.0.0"
  depends_on "libqmap"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
