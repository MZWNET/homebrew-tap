class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  version "0.0.487_43e829f"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-487-43e829f/sd-master-487-43e829f-bin-macos-metal-arm64.zip"
  sha256 "c554c948bfcdffeebfb1a89d86411444fabd4b895ebf20df905de8ef5952b2d6"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
