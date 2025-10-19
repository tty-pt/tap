class Libgeo < Formula
  desc "libgeo binary package"
  homepage "https://github.com/tty-pt/libgeo"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libgeo/releases/download/v0.1.0/libgeo-0.1.0-brew-arm64.tar.gz"
    sha256 "fd495e30e0fd4bd0be02fd3562872a0ad885c4343d07e9e4b28811113974c2e0"
  else
    url "https://github.com/tty-pt/libgeo/releases/download/v0.1.0/libgeo-0.1.0-brew-x86_64.tar.gz"
    sha256 "8ebeee88f7e84af8654e7af7b4daf9228e122f8d096dd0320acba6908cf30e21"
  end
  version "0.1.0"
  depends_on "libqmap"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
