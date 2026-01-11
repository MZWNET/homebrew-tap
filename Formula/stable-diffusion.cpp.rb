class StableDiffusionCpp < Formula
  version "885e62e"
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  url "https://github.com/MZWNET/actions/releases/download/sd-master-468-885e62e/sd-master-468-885e62e-bin-macos-metal-arm64.zip"
  sha256 "a8970b43614fec7d1b7c8f2bd9c95eda4d55464cb5a1664ef7d6c7e861f86835"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
