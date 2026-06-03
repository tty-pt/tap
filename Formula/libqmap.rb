class Libqmap < Formula
  desc "libqmap binary package"
  homepage "https://github.com/tty-pt/libqmap"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqmap/releases/download/v1.2.0/libqmap-1.2.0-brew-arm64.tar.gz"
    sha256 "84e7f97b74c97c910a36ecce1671a96a022f1d644ad09d8bb88804593c82210c"
  else
    url "https://github.com/tty-pt/libqmap/releases/download/v1.2.0/libqmap-1.2.0-brew-x86_64.tar.gz"
    sha256 "698455c6526b33d54170c97387c3b044bc330bce37e568d855ba3474476b81d8"
  end
  version "1.2.0"
  depends_on "libqsys"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
