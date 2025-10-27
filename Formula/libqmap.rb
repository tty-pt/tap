class Libqmap < Formula
  desc "libqmap binary package"
  homepage "https://github.com/tty-pt/libqmap"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqmap/releases/download/v0.5.2/libqmap-0.5.2-brew-arm64.tar.gz"
    sha256 "2126dd512bbdf560550c225662b34e720fe2f18fa06c37604856b8819be1fc86"
  else
    url "https://github.com/tty-pt/libqmap/releases/download/v0.5.2/libqmap-0.5.2-brew-x86_64.tar.gz"
    sha256 "16992787c05f0fcbc1135d4c024ce3cb806361b882a9bb7560ad63f93797b388"
  end
  version "0.5.2"
  depends_on "libqsys"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
