class Libcorm < Formula
  desc "libcorm binary package"
  homepage "https://github.com/tty-pt/libcorm"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libcorm/releases/download/v2.4.0/libcorm-2.4.0-brew-arm64.tar.gz"
    sha256 "32e3785905537a509c01fa8df2c899d78013fe97d708f60339619c5d3308ce5e"
  else
    url "https://github.com/tty-pt/libcorm/releases/download/v2.4.0/libcorm-2.4.0-brew-x86_64.tar.gz"
    sha256 "3212c745a546d635a6cf7f27319e02358216ea46f0e21810f76430c3bde1d9e8"
  end
  version "2.4.0"
  depends_on "libstele"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
