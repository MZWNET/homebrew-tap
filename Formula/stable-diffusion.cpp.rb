class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-1050-58bb3c1/sd-master-1050-58bb3c1-bin-macos-metal-arm64.zip"
  version "0.0.1050_58bb3c1"
  sha256 "25997da61f9fddd273820cc9ebbb188ab79914dc9d707ee89b2996049dbf70ce"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
