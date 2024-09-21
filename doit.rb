class Doit < Formula
  desc "a purposely simple aliasing tool"
  homepage ""
  url "https://github.com/sirmspencer/do/archive/refs/tags/0.1.17.tar.gz"
  sha256 "4553a4de3cfeb99107f7de4bf94c85823523df3ae84547c34d78efc759db0dd7"
  license "GPL-3.0"

  depends_on "borkdude/brew/babashka"

  def install
    bin.install "bb/doit"
  end
end
