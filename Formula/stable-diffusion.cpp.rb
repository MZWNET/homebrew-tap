class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-540-f16a110/sd-master-540-f16a110-bin-macos-metal-arm64.zip"
  version "0.0.540_f16a110"
  sha256 "9f0be2628f28d5b4dc5ddf5bb6e4c98144332fb0e24ff036b6deaabd54a4b033"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
