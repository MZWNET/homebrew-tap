class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-637-ef92a00/sd-master-637-ef92a00-bin-macos-metal-arm64.zip"
  version "0.0.637_ef92a00"
  sha256 "834a6918742e93ba58691ed54ae6d7c37c5ad7ddf1cdb5d48c296b49da6ff906"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
