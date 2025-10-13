class Libqdb < Formula
  desc "libqdb binary package"
  homepage "https://github.com/tty-pt/libqdb"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqdb/releases/download/v0.4.1/libqdb-0.4.1-macos-arm64.tar.gz"
    sha256 "44ac22fe3f561283178c94e3340827d6cc8af25ba66f974d0c48c2d13a32b2b9"
  else
    url "https://github.com/tty-pt/libqdb/releases/download/v0.4.1/libqdb-0.4.1-macos-x86_64.tar.gz"
    sha256 "059e40e5175db48f3de007cc68b775a4917ea7fd0246acfb1cbdafe3943e3f99"
  end
  version "0.4.1"
  depends_on "libqmap"
  depends_on "db"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
