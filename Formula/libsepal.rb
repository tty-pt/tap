class Libsepal < Formula
  desc "libsepal binary package"
  homepage "https://github.com/tty-pt/libsepal"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libsepal/releases/download/v1.4.2/libsepal-1.4.2-brew-arm64.tar.gz"
    sha256 "8f248fb6d3abe2fda1db99ca04f56eba75fed4a1d4629a3c83f7b3ae6e6faf36"
  else
    url "https://github.com/tty-pt/libsepal/releases/download/v1.4.2/libsepal-1.4.2-brew-x86_64.tar.gz"
    sha256 "0b1ba98a8b9d0e03bb76fdea2922d92fd966b8a6ccfe41aae77b9741ab5b7b2a"
  end
  version "1.4.2"
  depends_on "libcorm"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
