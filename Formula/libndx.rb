class Libndx < Formula
  desc "libndx binary package"
  homepage "https://github.com/tty-pt/libndx"
  url "https://github.com/tty-pt/libndx/releases/download/v0.0.7/libndx-0.0.7.tar.gz"
  sha256 "7cebb278cb0e1a3b92a2c5ca57271a882d54379b375525517b9e20b2e016ced6"
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
