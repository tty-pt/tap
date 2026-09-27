class Libcorm < Formula
  desc "libcorm binary package"
  homepage "https://github.com/tty-pt/libcorm"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libcorm/releases/download/v1.4.1/libcorm-1.4.1-brew-arm64.tar.gz"
    sha256 "f47e611dcea983c508a38253a9e8b3215a15ea120f1f88ae4bd0de7d0efa8369"
  else
    url "https://github.com/tty-pt/libcorm/releases/download/v1.4.1/libcorm-1.4.1-brew-x86_64.tar.gz"
    sha256 "397f402c69a43c3c45a96a9be973080c628603b73e8483793a51345de3caba42"
  end
  version "1.4.1"
  depends_on "libqsys"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
