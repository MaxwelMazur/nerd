FROM archlinux:latest

RUN pacman -Syu --noconfirm && \
    pacman -S --noconfirm git neovim ripgrep gopls xclip

# FROM ubuntu:latest

# RUN apt-get update \
#     && apt-get install -y git neovim ripgrep gopls xclip

WORKDIR /root

RUN git clone https://github.com/MaxwelMazur/nerd.git ~/.config/nvim

CMD ["nvim"]

