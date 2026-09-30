class NdStone < Formula
  desc "nd-stone binary package"
  homepage "https://github.com/tty-pt/nd-stone"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/nd-stone/releases/download/v1.0.1/nd-stone-1.0.1-brew-arm64.tar.gz"
    sha256 "95cee6d72f0a7647c59c7e33517e136e21e367ace958de73ec9d5bedea81e540"
  else
    url "https://github.com/tty-pt/nd-stone/releases/download/v1.0.1/nd-stone-1.0.1-brew-x86_64.tar.gz"
    sha256 "73c75b0f9f84ba4c88694490c48df98473abec2e80c914306efe1186dec6f529"
  end
  version "1.0.1"
  depends_on "axil-nd"
  depends_on "libxylem"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
