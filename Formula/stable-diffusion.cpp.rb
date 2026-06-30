class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-737-3b6c9ca/sd-master-737-3b6c9ca-bin-macos-metal-arm64.zip"
  version "0.0.737_3b6c9ca"
  sha256 "77ed4ca2c40a4f019be6e513564a55670ee0bd3143d1b8d9cd8482723dde40b8"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
