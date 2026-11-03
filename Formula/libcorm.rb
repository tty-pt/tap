class Libcorm < Formula
  desc "libcorm binary package"
  homepage "https://github.com/tty-pt/libcorm"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libcorm/releases/download/v2.2.3/libcorm-2.2.3-brew-arm64.tar.gz"
    sha256 "230af0abe184b6de001f93064a0ebf1215f60f98ed4e785a7dec863fd7faf6f4"
  else
    url "https://github.com/tty-pt/libcorm/releases/download/v2.2.3/libcorm-2.2.3-brew-x86_64.tar.gz"
    sha256 "2b713242ff4985130a42d1af4b88a9d634f0d963589fc6a49211b9024091495a"
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
