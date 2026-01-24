class StableDiffusionCpp < Formula
  version "fa61ea7"
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  url "https://github.com/MZWNET/actions/releases/download/sd-master-484-fa61ea7/sd-master-484-fa61ea7-bin-macos-metal-arm64.zip"
  sha256 "d5b3c9fbbf9f6107dadbda3ae45b23aa7ed106f61153b4adf26ea507fee7ea94"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
