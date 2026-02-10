class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  version "0.0.500_3296545"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-500-3296545/sd-master-500-3296545-bin-macos-metal-arm64.zip"
  sha256 "6771c173f078aeb9bb2f80ecd101f4ce60fb9611e74fddb08f1bcd66722b8fd2"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
