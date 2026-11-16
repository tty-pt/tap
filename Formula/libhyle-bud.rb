class LibhyleBud < Formula
  desc "libhyle-bud binary package"
  homepage "https://github.com/tty-pt/libhyle-bud"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libhyle-bud/releases/download/v1.2.1/libhyle-bud-1.2.1-brew-arm64.tar.gz"
    sha256 "cc8b43ea47e82397221cee4de5ab8adbf4674ffd288372b158e90201a2220d2e"
  else
    url "https://github.com/tty-pt/libhyle-bud/releases/download/v1.2.1/libhyle-bud-1.2.1-brew-x86_64.tar.gz"
    sha256 "fb0fdab509ccc9133170b008b472d274c6a0bba2add2fab9678b0aad4e5beba2"
  end
  version "1.2.1"
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
