class Libcorm < Formula
  desc "libcorm binary package"
  homepage "https://github.com/tty-pt/libcorm"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libcorm/releases/download/v2.2.4/libcorm-2.2.4-brew-arm64.tar.gz"
    sha256 "5d12a19c3e20421c3156101ce390b5b62933b766e2a0aae64aa8880dc1ef04f3"
  else
    url "https://github.com/tty-pt/libcorm/releases/download/v2.2.4/libcorm-2.2.4-brew-x86_64.tar.gz"
    sha256 "30053e19e076fe1747963f605b283d6654e08118d916c4727e0a7c382290508c"
  end
  version "2.2.4"
  depends_on "libstele"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
