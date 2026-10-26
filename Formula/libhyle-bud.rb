class LibhyleBud < Formula
  desc "libhyle-bud binary package"
  homepage "https://github.com/tty-pt/libhyle-bud"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libhyle-bud/releases/download/v1.1.0/libhyle-bud-1.1.0-brew-arm64.tar.gz"
    sha256 "35fa5b08ab3c5c48b0e5f4f4e94839be8020fb77ae040e17dd6f7bf8d8956ead"
  else
    url "https://github.com/tty-pt/libhyle-bud/releases/download/v1.1.0/libhyle-bud-1.1.0-brew-x86_64.tar.gz"
    sha256 "a7bf15fec71ef037c4ad421471c2c9084bc7593fabd9fe509bacf889679524de"
  end
  version "1.1.0"
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
