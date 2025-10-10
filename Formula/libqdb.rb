class Libqdb < Formula
  desc "libqdb binary package"
  homepage "https://github.com/tty-pt/libqdb"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqdb/releases/download/v0.4.1/libqdb-0.4.1-macos-arm64.tar.gz"
    sha256 "b21ee0df152c4e2b5fabb7505a0782d6c1b755f1f108441c7be42015f92de479"
  else
    url "https://github.com/tty-pt/libqdb/releases/download/v0.4.1/libqdb-0.4.1-macos-x86_64.tar.gz"
    sha256 "dcf728e6b73f4b53456f5d692204daaf584c70fbc3c5f01de523d999aac2eb2f"
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
