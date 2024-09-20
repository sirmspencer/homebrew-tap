# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Doit < Formula
  desc "a purposely simple aliasing tool"
  homepage ""
  url "https://github.com/sirmspencer/do/archive/refs/tags/0.1.15.tar.gz"
  sha256 "9427e09ae491113ee06be17242961ba19bf74185c0fa1bad94e5734a2dafd30e"
  license "GPL-3.0"

  depends_on "borkdude/brew/babashka"

  def install
    bin.install "bb/doit"
  end
end
