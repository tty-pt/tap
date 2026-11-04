class LibhyleBud < Formula
  desc "libhyle-bud binary package"
  homepage "https://github.com/tty-pt/libhyle-bud"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libhyle-bud/releases/download/v1.1.1/libhyle-bud-1.1.1-brew-arm64.tar.gz"
    sha256 "ebac476d61fef99f44f6f15b5ccd9fa3e98757c1b11bac317c16584a09746622"
  else
    url "https://github.com/tty-pt/libhyle-bud/releases/download/v1.1.1/libhyle-bud-1.1.1-brew-x86_64.tar.gz"
    sha256 "505bcd1c1af73311729b38899f45f99e52f0f284b43a74856ae09c6d2df231e8"
  end
  version "1.1.1"
  depends_on "libstele"
  depends_on "libcorm"
  depends_on "libhyle"
  depends_on "libbud"
  depends_on "libhyle-source"
  depends_on "json-c"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
