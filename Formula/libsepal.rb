class Libsepal < Formula
  desc "libsepal binary package"
  homepage "https://github.com/tty-pt/libsepal"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libsepal/releases/download/v1.0.0/libsepal-1.0.0-brew-arm64.tar.gz"
    sha256 "f414b43c3eeeaeac13695c36e7fd48e2ef525bf385c21b0028268243d05f5bbd"
  else
    url "https://github.com/tty-pt/libsepal/releases/download/v1.0.0/libsepal-1.0.0-brew-x86_64.tar.gz"
    sha256 "f819ab86e50c9ff807fecc50451779ef46f0f79d9f08e4cdf07c948797cdcdde"
  end
  version "1.0.0"
  depends_on "libcorm"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
