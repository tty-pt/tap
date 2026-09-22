class Libhyle-source < Formula
  desc "libhyle-source binary package"
  homepage "https://github.com/tty-pt/libhyle-source"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libhyle-source/releases/download/v1.0.0/libhyle-source-1.0.0-brew-arm64.tar.gz"
    sha256 "772ace23618e4ee67748efae06b24ba8c1ebdc73e1311febd165291144b69a8a"
  else
    url "https://github.com/tty-pt/libhyle-source/releases/download/v1.0.0/libhyle-source-1.0.0-brew-x86_64.tar.gz"
    sha256 "81711bc903a46480dbb72ca25a207417cc2aa9b6b1cb2812711cafda945e16cc"
  end
  version "1.0.0"
  depends_on "libqsys"
  depends_on "libqmap"
  depends_on "libstoma"
  depends_on "libhyle"
  depends_on "json-c"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
