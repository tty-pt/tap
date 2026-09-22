class LibhyleBud < Formula
  desc "libhyle-bud binary package"
  homepage "https://github.com/tty-pt/libhyle-bud"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libhyle-bud/releases/download/v1.0.0/libhyle-bud-1.0.0-brew-arm64.tar.gz"
    sha256 "e523788489a0f3305b13757ad2c1426756f745bbfdb491f6b0977097ae775444"
  else
    url "https://github.com/tty-pt/libhyle-bud/releases/download/v1.0.0/libhyle-bud-1.0.0-brew-x86_64.tar.gz"
    sha256 "59e8af78fd5d15935d774714b53205d7cc420f3954529e81410395f764d2609d"
  end
  version "1.0.0"
  depends_on "libqsys"
  depends_on "libqmap"
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
