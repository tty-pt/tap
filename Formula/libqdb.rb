class Libqdb < Formula
  desc "libqdb binary package"
  homepage "https://github.com/tty-pt/libqdb"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqdb/releases/download/v0.5.0/libqdb-0.5.0-brew-arm64.tar.gz"
    sha256 "509ab77866c4537adb80072c65aa2daedc1a498745fba6c54fdca15128ef70dd"
  else
    url "https://github.com/tty-pt/libqdb/releases/download/v0.5.0/libqdb-0.5.0-brew-x86_64.tar.gz"
    sha256 "96fa8425574aa4bf4c5d27eb948fc22ee71b214c6a0150f7c33a297361c4379f"
  end
  version "0.5.0"
  depends_on "libqmap"
  depends_on "db"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
