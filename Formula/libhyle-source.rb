class LibhyleSource < Formula
  desc "libhyle-source binary package"
  homepage "https://github.com/tty-pt/libhyle-source"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libhyle-source/releases/download/v1.4.0/libhyle-source-1.4.0-brew-arm64.tar.gz"
    sha256 "03e4db117463f3b82efdfc59b9421f5c5173df985a41440a38bd9f8c0ac43c22"
  else
    url "https://github.com/tty-pt/libhyle-source/releases/download/v1.4.0/libhyle-source-1.4.0-brew-x86_64.tar.gz"
    sha256 "c49fa1f66e9077eed21ff0a18be882a471772517a3fbecaa6780bad656155b48"
  end
  version "1.4.0"
  depends_on "libstele"
  depends_on "libcorm"
  depends_on "liblemma"
  depends_on "libhyle"
  depends_on "json-c"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
