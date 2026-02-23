class Libgeo < Formula
  desc "libgeo binary package"
  homepage "https://github.com/tty-pt/libgeo"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libgeo/releases/download/v0.4.2/libgeo-0.4.2-brew-arm64.tar.gz"
    sha256 "7e8ba508ca63bf4f2825f3ef50e9d08c20a5f76d5ac54f9ac32d906e7e6e633e"
  else
    url "https://github.com/tty-pt/libgeo/releases/download/v0.4.2/libgeo-0.4.2-brew-x86_64.tar.gz"
    sha256 "c8231da4dfbe80a58499649739e44c1d24be3320addaed211bf952c1137ee7c5"
  end
  version "0.4.2"
  depends_on "libqsys"
  depends_on "libqmap"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
