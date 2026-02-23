class Libqmap < Formula
  desc "libqmap binary package"
  homepage "https://github.com/tty-pt/libqmap"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqmap/releases/download/v0.7.0/libqmap-0.7.0-brew-arm64.tar.gz"
    sha256 "a79412453d64b565278a25a6cf712b83890a52e341b187df1d55b35fdfa548af"
  else
    url "https://github.com/tty-pt/libqmap/releases/download/v0.7.0/libqmap-0.7.0-brew-x86_64.tar.gz"
    sha256 "d63b91c52cd7c5c99da3ff8885e6905c632f3e5f5fb21d596bb56cb1d64cb881"
  end
  version "0.7.0"
  depends_on "libqsys"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
