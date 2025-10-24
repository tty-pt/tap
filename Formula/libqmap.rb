class Libqmap < Formula
  desc "libqmap binary package"
  homepage "https://github.com/tty-pt/libqmap"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqmap/releases/download/v0.5.0/libqmap-0.5.0-brew-arm64.tar.gz"
    sha256 "480ef0d7ae361e8d21cab44c11df0157f6a345fbd8d0f21c9a84b06b8181db73"
  else
    url "https://github.com/tty-pt/libqmap/releases/download/v0.5.0/libqmap-0.5.0-brew-x86_64.tar.gz"
    sha256 "18e2b67285a0b6dfe8d550efc0f8a1e5abc11c4f7c7ad143980492b51d7d375e"
  end
  version "0.5.0"
  depends_on "libqsys"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
