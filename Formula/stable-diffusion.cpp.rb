class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-596-90e87bc/sd-master-596-90e87bc-bin-macos-metal-arm64.zip"
  version "0.0.596_90e87bc"
  sha256 "5c5eea6da8e8812af83ae9d4fced07fadbcf711e361aee9a5f18c074db9337f7"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
