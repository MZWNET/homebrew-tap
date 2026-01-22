class StableDiffusionCpp < Formula
  version "3295711"
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  url "https://github.com/MZWNET/actions/releases/download/sd-master-482-3295711/sd-master-482-3295711-bin-macos-metal-arm64.zip"
  sha256 "13f7f89653560f6fade08e0f7d2577102bd74ae20954006a19a16f9921b18b4a"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
