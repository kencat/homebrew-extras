require "formula"

class Packmol < Formula
  homepage "http://www.ime.unicamp.br/~martinez/packmol/"
  url "http://leandro.iqm.unicamp.br/packmol/versionhistory/packmol-15.084.tar.gz"
  sha1 "1820362b56c11e59ac95e6bc2440ae3cf6c27ff1"

  env :std

  depends_on :fortran

  def install
    system "./configure"
    system "make"
    bin.install("packmol")
    (share/"packmol").install("solvate.tcl")
  end
end
