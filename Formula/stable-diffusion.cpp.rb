class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-869-07a85c7/sd-master-869-07a85c7-bin-macos-metal-arm64.zip"
  version "0.0.869_07a85c7"
  sha256 "ea36f5e735a0cc372b48428cc19ae2e04efa0db54e7ffe4562354ace9407d88b"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
