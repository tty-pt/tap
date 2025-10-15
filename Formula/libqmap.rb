class Libqmap < Formula
  desc "libqmap binary package"
  homepage "https://github.com/tty-pt/libqmap"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqmap/releases/download/v0.3.1/libqmap-0.3.1-brew-arm64.tar.gz"
    sha256 "0c68b2172dcecc920918984926e258c64bfd09a4a3a2a1f767f77b3f44a1c636"
  else
    url "https://github.com/tty-pt/libqmap/releases/download/v0.3.1/libqmap-0.3.1-brew-x86_64.tar.gz"
    sha256 "b8787283480336d6c197a79154d522fd4c18ba8171b71f83956dd043b64e5940"
  end
  version "0.3.1"
  depends_on "libqsys"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
