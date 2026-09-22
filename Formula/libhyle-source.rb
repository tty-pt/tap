class LibhyleSource < Formula
  desc "libhyle-source binary package"
  homepage "https://github.com/tty-pt/libhyle-source"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libhyle-source/releases/download/v1.0.0/libhyle-source-1.0.0-brew-arm64.tar.gz"
    sha256 "08ca7bb190ce7bc8e83c9a1ec6bf0de88b54d6eb47098d56e908eb8c0790a2f8"
  else
    url "https://github.com/tty-pt/libhyle-source/releases/download/v1.0.0/libhyle-source-1.0.0-brew-x86_64.tar.gz"
    sha256 "360212bbae260f7e9cda8457bdeff326a61b6df5dc07d4d65b937f6662a62182"
  end
  version "1.0.0"
  depends_on "libqsys"
  depends_on "libqmap"
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
