class Libndc < Formula
  desc "libndc binary package"
  homepage "https://github.com/tty-pt/libndc"
  url "https://github.com/tty-pt/libndc/releases/download/v0.15.0/libndc-0.15.0.tar.gz"
  sha256 "c8951db55d3d87e7ef84864a8b8249647fa0c35c406a28a4c944ac6f8a3c68e3"
  version "0.15.0"
  depends_on "libqmap"
  depends_on "libndx"
  depends_on "openssl"

  def install
    include.install Dir["include/*.h"] if Dir.exist?("include")
    lib.install Dir["lib/*"] if Dir.exist?("lib")
    bin.install Dir["bin/*"] if Dir.exist?("bin")
  end

  test do
    system "true"
  end
end
