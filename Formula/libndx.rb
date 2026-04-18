class Libndx < Formula
  desc "libndx binary package"
  homepage "https://github.com/tty-pt/libndx"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndx/releases/download/v1.1.2/libndx-1.1.2-brew-arm64.tar.gz"
    sha256 "256df91e982bafa320130e8ab304d51c87780272729e0df72c0962ef23e6925f"
  else
    url "https://github.com/tty-pt/libndx/releases/download/v1.1.2/libndx-1.1.2-brew-x86_64.tar.gz"
    sha256 "e2cdb108f2afbf8053daa28e50fcef48d9a0f1ccd8c7aff4a7d429625aea5b52"
  end
  version "1.1.2"
  depends_on "libqmap"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
