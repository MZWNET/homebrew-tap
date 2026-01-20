class StableDiffusionCpp < Formula
  version "b87fe13"
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  url "https://github.com/MZWNET/actions/releases/download/sd-master-480-b87fe13/sd-master-480-b87fe13-bin-macos-metal-arm64.zip"
  sha256 "24c31653a3dd6280657aad2ab15075a4ad8d9b30f2cbe69caae54a72eac3c90f"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
