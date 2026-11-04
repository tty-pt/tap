class LibhyleSource < Formula
  desc "libhyle-source binary package"
  homepage "https://github.com/tty-pt/libhyle-source"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libhyle-source/releases/download/v1.3.1/libhyle-source-1.3.1-brew-arm64.tar.gz"
    sha256 "90bc59b4f9c3a985eb13d00feb86aa3e61aaefa8699bf7cd5c0e67f0b8b83536"
  else
    url "https://github.com/tty-pt/libhyle-source/releases/download/v1.3.1/libhyle-source-1.3.1-brew-x86_64.tar.gz"
    sha256 "7c6be7b4f884d89cfad9943d6ce9f3b7a4dd82a4eb4f85dcb257f5d8e0a9e264"
  end
  version "1.3.1"
  depends_on "libstele"
  depends_on "libcorm"
  depends_on "liblemma"
  depends_on "libhyle"
  depends_on "json-c"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
