class Libcorm < Formula
  desc "libcorm binary package"
  homepage "https://github.com/tty-pt/libcorm"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libcorm/releases/download/v2.0.0/libcorm-2.0.0-brew-arm64.tar.gz"
    sha256 "d375c886604c58d4cffd7fa5d38401fb1efc2b6e0ce7610a2d506b45354a1675"
  else
    url "https://github.com/tty-pt/libcorm/releases/download/v2.0.0/libcorm-2.0.0-brew-x86_64.tar.gz"
    sha256 "a695bdd0bc362010096914a04525dd4dfe258a3200028d26566f0a5863fd3c88"
  end
  version "2.0.0"
  depends_on "libqsys"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
