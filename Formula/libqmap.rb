class Libqmap < Formula
  desc "libqmap binary package"
  homepage "https://github.com/tty-pt/libqmap"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqmap/releases/download/v0.3.1/libqmap-0.3.1-macos-arm64.tar.gz"
    sha256 "0ed74aa5b4eb7ff143cc98f17f6d1fc375c7a1c90d6afe0aef92bce028d811c6"
  else
    url "https://github.com/tty-pt/libqmap/releases/download/v0.3.1/libqmap-0.3.1-macos-x86_64.tar.gz"
    sha256 "dd6369ce175dd967d43c2c11e1f43ec1e2fc890bb70a49b3951e2a3d104686e3"
  end
  version "0.3.1"
  depends_on "libqsys"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
