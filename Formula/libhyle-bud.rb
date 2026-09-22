class LibhyleBud < Formula
  desc "libhyle-bud binary package"
  homepage "https://github.com/tty-pt/libhyle-bud"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libhyle-bud/releases/download/v1.0.0/libhyle-bud-1.0.0-brew-arm64.tar.gz"
    sha256 "541458697cb32b0227d67528e3164a8b846d9eb58b737525defb36668c95650d"
  else
    url "https://github.com/tty-pt/libhyle-bud/releases/download/v1.0.0/libhyle-bud-1.0.0-brew-x86_64.tar.gz"
    sha256 "d28b232587536a5a334787dd35d123f43a959c0c483e9c2566ebd7624acb9dff"
  end
  version "1.0.0"
  depends_on "libqsys"
  depends_on "libqmap"
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
