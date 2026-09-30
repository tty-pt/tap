class AxilNd < Formula
  desc "axil-nd binary package"
  homepage "https://github.com/tty-pt/axil-nd"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-nd/releases/download/v1.0.0/axil-nd-1.0.0-brew-arm64.tar.gz"
    sha256 "0d015879aa0af24a7f98049711eb9e8b3fcf5375bd084c2ae39516fa63bf20f3"
  else
    url "https://github.com/tty-pt/axil-nd/releases/download/v1.0.0/axil-nd-1.0.0-brew-x86_64.tar.gz"
    sha256 "a5ab9515c840ddffe523b05493913101877972ff6aebf23b691e8917d49a846a"
  end
  version "1.0.0"
  depends_on "axil"
  depends_on "libcorm"
  depends_on "libxylem"
  depends_on "libislet"
  depends_on "libqsys"
  depends_on "axil-tty"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
