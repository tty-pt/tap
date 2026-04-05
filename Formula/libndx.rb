class Libndx < Formula
  desc "libndx binary package"
  homepage "https://github.com/tty-pt/libndx"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndx/releases/download/v0.2.1/libndx-0.2.1-brew-arm64.tar.gz"
    sha256 "c1216c09dd411794cac6da5d340c0ad68b59c49e2dadfb3f254f8ad248bd221c"
  else
    url "https://github.com/tty-pt/libndx/releases/download/v0.2.1/libndx-0.2.1-brew-x86_64.tar.gz"
    sha256 "6fbdca9c0ef7aa521be5ead92e66e0960d915559147e4197bdc24b108f97feae"
  end
  version "0.2.1"
  depends_on "libqmap"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
