class Libgeo < Formula
  desc "libgeo binary package"
  homepage "https://github.com/tty-pt/libgeo"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libgeo/releases/download/v0.0.6/libgeo-0.0.6-brew-arm64.tar.gz"
    sha256 "1722dd88b94165b8af64e92705f36e118b48282b0521265d3cff04bf6c4d60fe"
  else
    url "https://github.com/tty-pt/libgeo/releases/download/v0.0.6/libgeo-0.0.6-brew-x86_64.tar.gz"
    sha256 "29f146dc0aad05294a62d6e9e569b005bed329a4fc90603fdb874bb08ee95944"
  end
  version "0.0.6"
  depends_on "libqmap"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
