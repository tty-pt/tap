class Libstele < Formula
  desc "libstele binary package"
  homepage "https://github.com/tty-pt/libstele"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libstele/releases/download/v1.6.1/libstele-1.6.1-brew-arm64.tar.gz"
    sha256 "af8e1a5ffb03bc2cf99a720a6aa616bd36bdf4c50446382c0762967d3b828b92"
  else
    url "https://github.com/tty-pt/libstele/releases/download/v1.6.1/libstele-1.6.1-brew-x86_64.tar.gz"
    sha256 "68c9d4ecfbba01cbd5ca9224d5d7646fdcca49bfacffcd2248c0442fd14e7ff3"
  end
  version "1.6.1"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
