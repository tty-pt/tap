class Libqmap < Formula
  desc "libqmap binary package"
  homepage "https://github.com/tty-pt/libqmap"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqmap/releases/download/v1.0.0/libqmap-1.0.0-brew-arm64.tar.gz"
    sha256 "241c093ed05d80b341b1ceda675448a3e9f44b2b66f8f7575bdb56b0d63b3eee"
  else
    url "https://github.com/tty-pt/libqmap/releases/download/v1.0.0/libqmap-1.0.0-brew-x86_64.tar.gz"
    sha256 "7defede37e372e0c36176b604ce6b0d070e1c67911983426715193491fa6ed20"
  end
  version "1.0.0"
  depends_on "libqsys"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
