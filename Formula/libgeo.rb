class Libgeo < Formula
  desc "libgeo binary package"
  homepage "https://github.com/tty-pt/libgeo"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libgeo/releases/download/v0.0.5/libgeo-0.0.5-macos-arm64.tar.gz"
    sha256 "0b077d35a5358f47c1c030277c32628772a08bb51a8fb5b62cff45607c7168a7"
  else
    url "https://github.com/tty-pt/libgeo/releases/download/v0.0.5/libgeo-0.0.5-macos-x86_64.tar.gz"
    sha256 "8b251b51ba15e5cb445c925c4c49405bc184aa2015f000b93c14c358e5494f7a"
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
