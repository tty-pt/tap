class Libcorm < Formula
  desc "libcorm binary package"
  homepage "https://github.com/tty-pt/libcorm"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libcorm/releases/download/v2.2.3/libcorm-2.2.3-brew-arm64.tar.gz"
    sha256 "967facba91463710506e3ed67dd4d1c87868a09f92582a8e890a90dfdd70d4dd"
  else
    url "https://github.com/tty-pt/libcorm/releases/download/v2.2.3/libcorm-2.2.3-brew-x86_64.tar.gz"
    sha256 "6c040481b5b5526cf70e180eb3f5bed3af094f238c60c09ea7549e991fc6c2dd"
  end
  version "2.2.3"
  depends_on "libstele"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
