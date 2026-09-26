class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-920-2f88688/sd-master-920-2f88688-bin-macos-metal-arm64.zip"
  version "0.0.920_2f88688"
  sha256 "524b89ee16e069ab04b5f0a99ee5f8b09b3dd440cedc99c3c56a12ccb3598fcd"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
