class Libsepal < Formula
  desc "libsepal binary package"
  homepage "https://github.com/tty-pt/libsepal"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libsepal/releases/download/v1.5.1/libsepal-1.5.1-brew-arm64.tar.gz"
    sha256 "91c1157f9d74664884d41f654ebea5f6d5f12e138c88ea1e8d00a4bca78d42d7"
  else
    url "https://github.com/tty-pt/libsepal/releases/download/v1.5.1/libsepal-1.5.1-brew-x86_64.tar.gz"
    sha256 "35dfccba3c76da27f93ee2ff6136b01c33b48fb9288ce188b7148303010d7881"
  end
  version "1.5.1"
  depends_on "libcorm"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
