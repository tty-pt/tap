class Libgeo < Formula
  desc "libgeo binary package"
  homepage "https://github.com/tty-pt/libgeo"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libgeo/releases/download/v0.0.5/libgeo-0.0.5-brew-arm64.tar.gz"
    sha256 "b1e84977824aa2cd8ed046d4fa67312b639822d8fff517c990307f689cfde951"
  else
    url "https://github.com/tty-pt/libgeo/releases/download/v0.0.5/libgeo-0.0.5-brew-x86_64.tar.gz"
    sha256 "2309ef66154218bf1dc71389c954e533548972d1f76db72c5a42048905c0cd79"
  end
  version "0.0.5"
  depends_on "libqdb"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
