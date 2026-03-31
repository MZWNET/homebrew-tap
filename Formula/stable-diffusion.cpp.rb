class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-545-1d6cb0f/sd-master-545-1d6cb0f-bin-macos-metal-arm64.zip"
  version "0.0.545_1d6cb0f"
  sha256 "d84807002584fd75606682a498b0ba761d9a909d977018cc31374cbf8d6e0ac0"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
