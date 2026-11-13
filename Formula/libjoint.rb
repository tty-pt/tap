class Libjoint < Formula
  desc "libjoint binary package"
  homepage "https://github.com/tty-pt/libjoint"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libjoint/releases/download/v1.7.1/libjoint-1.7.1-brew-arm64.tar.gz"
    sha256 "be6262e4e24a09e405c764e15175d63961b32da1a5f7e574b871c437891de219"
  else
    url "https://github.com/tty-pt/libjoint/releases/download/v1.7.1/libjoint-1.7.1-brew-x86_64.tar.gz"
    sha256 "424d54a8769df90a2c57240c2df5a7c6cdc97c188f313b0be5f9599632b9d900"
  end
  version "1.7.1"
  depends_on "libcorm"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
