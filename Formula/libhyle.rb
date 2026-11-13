class Libhyle < Formula
  desc "libhyle binary package"
  homepage "https://github.com/tty-pt/libhyle"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libhyle/releases/download/v1.7.0/libhyle-1.7.0-brew-arm64.tar.gz"
    sha256 "dd9e9e089eb8b2bc5cdc80981b04eb9b5b6bd98feac05f98de389f1168f3cf2a"
  else
    url "https://github.com/tty-pt/libhyle/releases/download/v1.7.0/libhyle-1.7.0-brew-x86_64.tar.gz"
    sha256 "3e9b2176eab674a3f6ca8c2e5acb372d4f406c1991a9afdd0288e7563f61502e"
  end
  version "1.7.0"
  depends_on "libcorm"
  depends_on "liblemma"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
