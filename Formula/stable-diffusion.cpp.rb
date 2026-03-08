class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-523-c8fb3d2/sd-master-523-c8fb3d2-bin-macos-metal-arm64.zip"
  version "0.0.523_c8fb3d2"
  sha256 "ee7799360e1cdc43dcf45761f6dc0c13e1d5a9130c7279246686e73d4cc5626c"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
