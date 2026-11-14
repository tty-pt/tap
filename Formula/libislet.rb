class Libislet < Formula
  desc "libislet binary package"
  homepage "https://github.com/tty-pt/libislet"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libislet/releases/download/v1.6.0/libislet-1.6.0-brew-arm64.tar.gz"
    sha256 "0b9a7494e30cd7b01de70b86c86961be5d556467a6f1c8eede197a1f6f7aee09"
  else
    url "https://github.com/tty-pt/libislet/releases/download/v1.6.0/libislet-1.6.0-brew-x86_64.tar.gz"
    sha256 "c4571201f09d83b1bec90f9928972522b4b8046a265ea43933730dd050b70aba"
  end
  version "1.6.0"
  depends_on "libstele"
  depends_on "libcorm"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
