class Libqmap < Formula
  desc "libqmap binary package"
  homepage "https://github.com/tty-pt/libqmap"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqmap/releases/download/v0.7.0/libqmap-0.7.0-brew-arm64.tar.gz"
    sha256 "4e97d06624a4eb3aaee0f3f9f40ee4585f068f61f19181028a452af5d3f8e4e9"
  else
    url "https://github.com/tty-pt/libqmap/releases/download/v0.7.0/libqmap-0.7.0-brew-x86_64.tar.gz"
    sha256 "43aa91c74f9b6fe47f280f9a1d31644002431eb789c67baec9d4b7ffd87afb26"
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
