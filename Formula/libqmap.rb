class Libqmap < Formula
  desc "libqmap binary package"
  homepage "https://github.com/tty-pt/libqmap"
  url "https://github.com/tty-pt/libqmap/releases/download/v0.3.1/libqmap-0.3.1.tar.gz"
  sha256 "f24e2cf4142da46e54fabaa424f38b44265ac26b644a9f9d4a6d6af31e26e185"
  version "0.3.1"

  def install
    include.install Dir["include/*.h"] if Dir.exist?("include")
    lib.install Dir["lib/*"] if Dir.exist?("lib")
    bin.install Dir["bin/*"] if Dir.exist?("bin")
  end

  test do
    system "true"
  end
end
