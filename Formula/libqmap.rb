class Libqmap < Formula
  desc "libqmap binary package"
  homepage "https://github.com/tty-pt/libqmap"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqmap/releases/download/v0.4.0/libqmap-0.4.0-brew-arm64.tar.gz"
    sha256 "972717716c9252af601e192bd298a1e3c3ae3f1d5bd11469f4989f5aee079607"
  else
    url "https://github.com/tty-pt/libqmap/releases/download/v0.4.0/libqmap-0.4.0-brew-x86_64.tar.gz"
    sha256 "e5d9bcb1f58d1e33ce564fd60904d2bf3e2335e07a4e617884c27503bdc0d88f"
  end
  version "0.4.0"
  depends_on "libqsys"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
