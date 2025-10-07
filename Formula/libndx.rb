class Libndx < Formula
  desc "libndx binary package"
  homepage "https://github.com/tty-pt/libndx"
  url "https://github.com/tty-pt/libndx/releases/download/v0.0.7/libndx-0.0.7.tar.gz"
  sha256 "45a17cfb3d2b3dcd93d2547cca775119ca92670553b89b038e4f6cb3b2822b30"
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
