class NdClass < Formula
  desc "nd-class binary package"
  homepage "https://github.com/tty-pt/nd-class"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/nd-class/releases/download/v1.0.2/nd-class-1.0.2-brew-arm64.tar.gz"
    sha256 "77314b31aaa7f72844c48033cc1df4f7fee4eccd83f4e1e478ae9c9d63c928ea"
  else
    url "https://github.com/tty-pt/nd-class/releases/download/v1.0.2/nd-class-1.0.2-brew-x86_64.tar.gz"
    sha256 "c50a9599ff5abd63f11930637fe964ac0d9e17e1cf0516a7fcdc543b8d7eaa89"
  end
  version "1.0.2"
  depends_on "axil-nd"
  depends_on "libxylem"
  depends_on "nd-level"
  depends_on "nd-attr"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
