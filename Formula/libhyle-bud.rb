class LibhyleBud < Formula
  desc "libhyle-bud binary package"
  homepage "https://github.com/tty-pt/libhyle-bud"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libhyle-bud/releases/download/v1.0.1/libhyle-bud-1.0.1-brew-arm64.tar.gz"
    sha256 "3a99c70dd5edc49c65084263efb81fe02e195090e4210aa2bd106ac9ffc790ec"
  else
    url "https://github.com/tty-pt/libhyle-bud/releases/download/v1.0.1/libhyle-bud-1.0.1-brew-x86_64.tar.gz"
    sha256 "f93a1363195a8e79cb9e64602c4235b5967cb6bda376bc1d601579b7858d24ec"
  end
  version "1.0.1"
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
