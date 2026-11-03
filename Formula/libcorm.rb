class Libcorm < Formula
  desc "libcorm binary package"
  homepage "https://github.com/tty-pt/libcorm"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libcorm/releases/download/v2.2.3/libcorm-2.2.3-brew-arm64.tar.gz"
    sha256 "b398f5cbe76ba3debb60063e797ac991e62aeccd3c4563ab202610a689088deb"
  else
    url "https://github.com/tty-pt/libcorm/releases/download/v2.2.3/libcorm-2.2.3-brew-x86_64.tar.gz"
    sha256 "f000ee9f13da5ea76dc8c1227bbdbd678ba97bbd5407f7d4422c5e902eec5a59"
  end
  version "2.2.3"
  depends_on "libstele"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
