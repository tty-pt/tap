class Libgeo < Formula
  desc "libgeo binary package"
  homepage "https://github.com/tty-pt/libgeo"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libgeo/releases/download/v0.4.3/libgeo-0.4.3-brew-arm64.tar.gz"
    sha256 "5fa107f248cd029d48f7dd4f3176957693e68673f9ea72399797b303247f603c"
  else
    url "https://github.com/tty-pt/libgeo/releases/download/v0.4.3/libgeo-0.4.3-brew-x86_64.tar.gz"
    sha256 "c534a9980051e06740b3b2fcabaef49fc3cb04c1db789ba5166ff58ec701fdfe"
  end
  version "0.4.3"
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
