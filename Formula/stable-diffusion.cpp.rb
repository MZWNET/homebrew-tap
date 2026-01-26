class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  version "0.0.487_43e829f"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-487-43e829f/sd-master-487-43e829f-bin-macos-metal-arm64.zip"
  sha256 "9fd233510c5b06411d350a3559f6647a453d94729380c09134d65fae9fa69492"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
