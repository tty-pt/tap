class Libgeo < Formula
  desc "libgeo binary package"
  homepage "https://github.com/tty-pt/libgeo"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libgeo/releases/download/v0.0.5/libgeo-0.0.5-macos-arm64.tar.gz"
    sha256 "d632f6e7039e8cf0a5829efbea3f0963abbbf53dd0e3246b9dea6cc4ae9b3d3e"
  else
    url "https://github.com/tty-pt/libgeo/releases/download/v0.0.5/libgeo-0.0.5-macos-x86_64.tar.gz"
    sha256 "067e32d31714588220271d5e518d35e50090aa51b127d69387af5b1931cc0fa8"
  end
  version "0.0.5"
  depends_on "libqdb"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
