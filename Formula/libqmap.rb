class Libqmap < Formula
  desc "libqmap binary package"
  homepage "https://github.com/tty-pt/libqmap"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqmap/releases/download/v0.3.1/libqmap-0.3.1-macos-arm64.tar.gz"
    sha256 "3bb52d1e6418e6b8779542c1c7e111b6f34a0090187d10758b4e475d89602014"
  else
    url "https://github.com/tty-pt/libqmap/releases/download/v0.3.1/libqmap-0.3.1-macos-x86_64.tar.gz"
    sha256 "cd30374c30a688a9a3a29421d0a7af5cce3ac19f6d42bdcd1196cde8b94390ef"
  end
  version "0.3.1"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
