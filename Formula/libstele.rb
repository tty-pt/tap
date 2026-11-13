class Libstele < Formula
  desc "libstele binary package"
  homepage "https://github.com/tty-pt/libstele"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libstele/releases/download/v1.6.2/libstele-1.6.2-brew-arm64.tar.gz"
    sha256 "f638974972087809c1091916d84250d1b629aede2d1069e835fa049a1f78f6d2"
  else
    url "https://github.com/tty-pt/libstele/releases/download/v1.6.2/libstele-1.6.2-brew-x86_64.tar.gz"
    sha256 "7adf963c9a9e71985d5ccf56e7c0181025f859c012b4212c7d0bbeab42badcf9"
  end
  version "1.6.2"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
