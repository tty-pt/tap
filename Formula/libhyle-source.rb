class LibhyleSource < Formula
  desc "libhyle-source binary package"
  homepage "https://github.com/tty-pt/libhyle-source"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libhyle-source/releases/download/v1.4.0/libhyle-source-1.4.0-brew-arm64.tar.gz"
    sha256 "9afe964da80e8d71cf788f1b8febe7fffcc3240544bc483b24be0ef6a77616ae"
  else
    url "https://github.com/tty-pt/libhyle-source/releases/download/v1.4.0/libhyle-source-1.4.0-brew-x86_64.tar.gz"
    sha256 "4963a1cf71d7e1d30e3c646423348fc0aef3826e7738025cd7244e9a6693092c"
  end
  version "1.4.0"
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
