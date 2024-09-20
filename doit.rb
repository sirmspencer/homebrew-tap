class Doit < Formula
  desc "a purposely simple aliasing tool"
  homepage ""
  url "https://github.com/sirmspencer/do/archive/refs/tags/0.1.15.tar.gz"
  sha256 "4d4f76b7aa46ea81086bf4a4ed6ed1bd7976a88bb3a71d8daf60963224bcd1f0"
  license "GPL-3.0"

  depends_on "borkdude/brew/babashka"

  def install
    bin.install "bb/doit"
  end
end
