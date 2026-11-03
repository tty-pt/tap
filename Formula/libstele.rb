class Libstele < Formula
  desc "libstele binary package"
  homepage "https://github.com/tty-pt/libstele"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libstele/releases/download/v1.5.1/libstele-1.5.1-brew-arm64.tar.gz"
    sha256 "2ce611254825e124ba3a51281583420ed0dd02ceeb572daf407f0d6f9e827c61"
  else
    url "https://github.com/tty-pt/libstele/releases/download/v1.5.1/libstele-1.5.1-brew-x86_64.tar.gz"
    sha256 "9a4606d41f8630175f4c72095fe8b6a44cc335ad1c7ab57cb7a39d424b3c5b45"
  end
  version "1.5.1"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
