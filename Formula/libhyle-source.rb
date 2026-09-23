class LibhyleSource < Formula
  desc "libhyle-source binary package"
  homepage "https://github.com/tty-pt/libhyle-source"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libhyle-source/releases/download/v1.0.0/libhyle-source-1.0.0-brew-arm64.tar.gz"
    sha256 "a6a483ebb66eaca5076e82d1ad69ee44e05429fb1ca75ddd1eb444e832197c63"
  else
    url "https://github.com/tty-pt/libhyle-source/releases/download/v1.0.0/libhyle-source-1.0.0-brew-x86_64.tar.gz"
    sha256 "4f2bd52727eb7e3884cd9361bf8729f7f3203f995c3d99fce0b2ee184b88ddf0"
  end
  version "1.0.0"
  depends_on "libqsys"
  depends_on "libcorm"
  depends_on "libstoma"
  depends_on "libhyle"
  depends_on "json-c"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
