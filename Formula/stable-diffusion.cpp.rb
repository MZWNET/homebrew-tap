class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-820-de298c2/sd-master-820-de298c2-bin-macos-metal-arm64.zip"
  version "0.0.820_de298c2"
  sha256 "25f69dcd67a336ceb514ad1cb2b8f63aa76107f1f8ebb6839eb357a1facf2bd1"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
