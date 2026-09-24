class LibhyleBud < Formula
  desc "libhyle-bud binary package"
  homepage "https://github.com/tty-pt/libhyle-bud"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libhyle-bud/releases/download/v1.0.0/libhyle-bud-1.0.0-brew-arm64.tar.gz"
    sha256 "eda08454aa0d7d6cc5af4700e1fefdaeb62fde0bca763ddaa36d84881e46e792"
  else
    url "https://github.com/tty-pt/libhyle-bud/releases/download/v1.0.0/libhyle-bud-1.0.0-brew-x86_64.tar.gz"
    sha256 "548ed96cf70fd236d18ad08d42c14c360794a655f6ad0bfec05555c09d882849"
  end
  version "1.0.0"
  depends_on "libqsys"
  depends_on "libcorm"
  depends_on "libhyle"
  depends_on "libbud"
  depends_on "libhyle-source"
  depends_on "json-c"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
