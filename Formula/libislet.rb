class Libislet < Formula
  desc "libislet binary package"
  homepage "https://github.com/tty-pt/libislet"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libislet/releases/download/v1.3.1/libislet-1.3.1-brew-arm64.tar.gz"
    sha256 "a1f997e1117dd77d66cf638759b0214c8106b2fc1f3a7383b8658182c6d89c3f"
  else
    url "https://github.com/tty-pt/libislet/releases/download/v1.3.1/libislet-1.3.1-brew-x86_64.tar.gz"
    sha256 "ba1924ac3e5f39ed4c8fddfa786a4ba86230257b8462553905eb70456ad9d28f"
  end
  version "1.3.1"
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
