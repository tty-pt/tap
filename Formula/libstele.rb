class Libstele < Formula
  desc "libstele binary package"
  homepage "https://github.com/tty-pt/libstele"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libstele/releases/download/v1.6.2/libstele-1.6.2-brew-arm64.tar.gz"
    sha256 "55b940aa522f116ae8e08462f85530ad54b57c1d641c47729069ea000e8d1f84"
  else
    url "https://github.com/tty-pt/libstele/releases/download/v1.6.2/libstele-1.6.2-brew-x86_64.tar.gz"
    sha256 "4d69f5dc17b717aa19c0e83bc1340ba46680e0c8efd1d215a35827bb429bea40"
  end
  version "1.6.2"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
