class Libqmap < Formula
  desc "libqmap binary package"
  homepage "https://github.com/tty-pt/libqmap"
  url "https://github.com/tty-pt/libqmap/releases/download/v0.3.1/libqmap-0.3.1.tar.gz"
  sha256 "93a304adb466ba2c9f9f9fd15257a6c589aec7d05db1573f5caf9d19ae70f421"
  version "0.3.1"
  depends_on "libqsys"
  depends_on "xxhash"

  def install
    include.install Dir["include/*.h"] if Dir.exist?("include")
    lib.install Dir["lib/*"] if Dir.exist?("lib")
    bin.install Dir["bin/*"] if Dir.exist?("bin")
  end

  test do
    system "true"
  end
end
