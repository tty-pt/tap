class Libndx < Formula
  desc "libndx binary package"
  homepage "https://github.com/tty-pt/libndx"
  url "https://github.com/tty-pt/libndx/releases/download/v0.0.7/libndx-0.0.7.tar.gz"
  sha256 "d59ae944851fa4cd1526700549294a83fc3f269f421f6a1a1588c745b7c845b5"
  version "0.0.7"
  depends_on "libqmap"

  def install
    include.install Dir["include/*.h"] if Dir.exist?("include")
    lib.install Dir["lib/*"] if Dir.exist?("lib")
    bin.install Dir["bin/*"] if Dir.exist?("bin")
  end

  test do
    system "true"
  end
end
