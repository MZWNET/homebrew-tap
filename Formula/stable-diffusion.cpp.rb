class StableDiffusionCpp < Formula
  version "9be0b91"
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  url "https://github.com/MZWNET/actions/releases/download/sd-master-9be0b91/sd-master-9be0b91-bin-macos-metal-arm64.zip"
  sha256 "5f5a890809e7b4c2f5abc37168aeb87ea89f1d86807348b6bd1ea09299fe1d08"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
    system "/usr/bin/install_name_tool", "-add_rpath", "@loader_path", "#{bin}/sd-cli"
    system "/usr/bin/install_name_tool", "-add_rpath", "@loader_path", "#{bin}/sd-server"
  end
end
