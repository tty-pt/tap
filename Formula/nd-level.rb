class NdLevel < Formula
  desc "nd-level binary package"
  homepage "https://github.com/tty-pt/nd-level"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/nd-level/releases/download/v1.0.1/nd-level-1.0.1-brew-arm64.tar.gz"
    sha256 "531a5d9f50246910a87bfc79816082a23f3f3fe231b489a34098af600cecb147"
  else
    url "https://github.com/tty-pt/nd-level/releases/download/v1.0.1/nd-level-1.0.1-brew-x86_64.tar.gz"
    sha256 "6c377f83cd9de25a152571216c896107fd6b2ab63a6538bbb7c64beeb0a9d39c"
  end
  version "1.0.1"
  depends_on "axil-nd"
  depends_on "libxylem"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
