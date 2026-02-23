class Libqmap < Formula
  desc "libqmap binary package"
  homepage "https://github.com/tty-pt/libqmap"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqmap/releases/download/v0.6.0/libqmap-0.6.0-brew-arm64.tar.gz"
    sha256 "4a434ff35bd2ae5963c97b0205bf35d857e20eb6cb84c37be342f92dee6603b7"
  else
    url "https://github.com/tty-pt/libqmap/releases/download/v0.6.0/libqmap-0.6.0-brew-x86_64.tar.gz"
    sha256 "a68ef1bb00b9355fdec82ea25d91b2f1a00b88a6a650150e2ea411651f52c53f"
  end
  version "0.6.0"
  depends_on "libqsys"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
