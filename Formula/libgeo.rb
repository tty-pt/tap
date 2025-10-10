class Libgeo < Formula
  desc "libgeo binary package"
  homepage "https://github.com/tty-pt/libgeo"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libgeo/releases/download/v0.0.5/libgeo-0.0.5-macos-arm64.tar.gz"
    sha256 "840978f46d66f0db41f058cb3f92558676ba3f8e9ecaf937595fd9945d65a5ed"
  else
    url "https://github.com/tty-pt/libgeo/releases/download/v0.0.5/libgeo-0.0.5-macos-x86_64.tar.gz"
    sha256 "9c0e8ebfd36fe871ed1bb3b0c859632e1549137a3be4a7c9a074613068c0f26e"
  end
  version "0.0.5"
  depends_on "libqdb"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
