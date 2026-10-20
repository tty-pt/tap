class Libislet < Formula
  desc "libislet binary package"
  homepage "https://github.com/tty-pt/libislet"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libislet/releases/download/v1.2.0/libislet-1.2.0-brew-arm64.tar.gz"
    sha256 "12b27ceb3c29fd978360cbeb520d53e1311b96c4d44498d77cc145067c532a0a"
  else
    url "https://github.com/tty-pt/libislet/releases/download/v1.2.0/libislet-1.2.0-brew-x86_64.tar.gz"
    sha256 "b7bddf853fdd3313542aaa3df748307757d29dda9d42cdc44c417444aedd6ac3"
  end
  version "1.2.0"
  depends_on "libqsys"
  depends_on "libcorm"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
