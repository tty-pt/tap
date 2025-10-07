class Libgeo < Formula
  desc "libgeo binary package"
  homepage "https://github.com/tty-pt/libgeo"
  url "https://github.com/tty-pt/libgeo/releases/download/v0.0.5/libgeo-0.0.5.tar.gz"
  sha256 "3d0b90f024e4d29b19489bf955865e9b8f92a9898bcb33621c555dbbb5cf1d21"
  version "0.0.5"
  depends_on "libqdb"

  def install
    include.install Dir["include/*.h"] if Dir.exist?("include")
    lib.install Dir["lib/*"] if Dir.exist?("lib")
    bin.install Dir["bin/*"] if Dir.exist?("bin")
  end

  test do
    system "true"
  end
end
