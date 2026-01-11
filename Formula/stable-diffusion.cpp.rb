class StableDiffusionCpp < Formula
  version "885e62e"
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  url "https://github.com/MZWNET/actions/releases/download/sd-master-468-885e62e/sd-master-468-885e62e-bin-macos-metal-arm64.zip"
  sha256 "ee759d1ac75ceeab583e028bf2ea7e5d3935495df14b37af8cf81833f9d66cac"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
