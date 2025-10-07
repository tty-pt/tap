class Libndx < Formula
  desc "libndx binary package"
  homepage "https://github.com/tty-pt/libndx"
  url "https://github.com/tty-pt/libndx/releases/download/v0.0.7/libndx-0.0.7.tar.gz"
  sha256 "5508c65028761d35355b696f9357dd7e61b923c4923b8d68be73645b7d21ae46"
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
