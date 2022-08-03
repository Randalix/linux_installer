#!/usr/bin/env sh
install="$(cat ./install)"
$install nala
nala --install-completion bash
