class Libislet < Formula
  desc "libislet binary package"
  homepage "https://github.com/tty-pt/libislet"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libislet/releases/download/v1.6.2/libislet-1.6.2-brew-arm64.tar.gz"
    sha256 "05096d7f4dbe14d7853c38694e99ca59391b3698c5ebce3db82abe435890b661"
  else
    url "https://github.com/tty-pt/libislet/releases/download/v1.6.2/libislet-1.6.2-brew-x86_64.tar.gz"
    sha256 "d1a3c209335aece800b23318de9d674f98a70eaf2f1414219da5ee96aa4b8f57"
  end
  version "1.6.2"
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
