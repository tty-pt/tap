class LibhyleBud < Formula
  desc "libhyle-bud binary package"
  homepage "https://github.com/tty-pt/libhyle-bud"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libhyle-bud/releases/download/v1.0.2/libhyle-bud-1.0.2-brew-arm64.tar.gz"
    sha256 "23f2180d0c519ea9f0554b5a1f842d3fde9ab84682f04dcd2a825fc60fba70ba"
  else
    url "https://github.com/tty-pt/libhyle-bud/releases/download/v1.0.2/libhyle-bud-1.0.2-brew-x86_64.tar.gz"
    sha256 "f6078af27814a83bda6985a9d3ba45e5dbabd132e62ae78a49a49f70d39c0400"
  end
  version "1.0.2"
  depends_on "libqsys"
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
