class Libqdb < Formula
  desc "libqdb binary package"
  homepage "https://github.com/tty-pt/libqdb"
  url "https://github.com/tty-pt/libqdb/releases/download/v0.4.1/libqdb-0.4.1.tar.gz"
  sha256 "f9af8811897b7d0c2e79adb2557157cb87eb6761caa4cd28e7011be73d3c15d4"
  version "0.4.1"
  depends_on "libqmap"
  depends_on "db"

  def install
    include.install Dir["include/*.h"] if Dir.exist?("include")
    lib.install Dir["lib/*"] if Dir.exist?("lib")
    bin.install Dir["bin/*"] if Dir.exist?("bin")
  end

  test do
    system "true"
  end
end
