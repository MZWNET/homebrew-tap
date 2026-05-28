class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-656-0e4ee04/sd-master-656-0e4ee04-bin-macos-metal-arm64.zip"
  version "0.0.656_0e4ee04"
  sha256 "7a60502e90babaae4f90e805f9d3bf8572d23ad0a9e7b237104eef2e15fcf133"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
