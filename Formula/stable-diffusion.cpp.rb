class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-872-cc515a0/sd-master-872-cc515a0-bin-macos-metal-arm64.zip"
  version "0.0.872_cc515a0"
  sha256 "450448d809302ab8d9dfc9a7d470c4c5348033ad4808777cf9f6fbee5497c144"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
