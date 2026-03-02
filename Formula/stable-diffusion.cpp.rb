class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  version "0.0.514_5792c66"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-514-5792c66/sd-master-514-5792c66-bin-macos-metal-arm64.zip"
  sha256 "d3e0aa215643d6b81aea3c21e48aba4a3319b9d5431d892f5ef81420e24a02e6"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
