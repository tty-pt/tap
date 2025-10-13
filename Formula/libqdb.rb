class Libqdb < Formula
  desc "libqdb binary package"
  homepage "https://github.com/tty-pt/libqdb"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqdb/releases/download/v0.4.1/libqdb-0.4.1-macos-arm64.tar.gz"
    sha256 "94ca566b686d6a52438a051b7a51732649af813289334d51c4f58ac442882a6b"
  else
    url "https://github.com/tty-pt/libqdb/releases/download/v0.4.1/libqdb-0.4.1-macos-x86_64.tar.gz"
    sha256 "8bdde998a3ce545aa2ccce853386fc3995bd5d1e89a52bfed665820be6c4fe82"
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
