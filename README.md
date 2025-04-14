# Angrybox

## Rants

Sometimes you might go to a new server because the user (or owner) complained about something broken. You sit down and type "htop". "bash: htop: command not found".

You ask, "How can I install htop?"

"What's htop?"

"A process viewer."

"Err... I don't know what that is. Can you try apt? I think it's in there."

You type `sudo apt install htop`. Enter. You note that an ancient version of htop is being installed. Too old to have the features you need.

You give up and download htop binary from GitHub. Run it. Now it "cannot find GLIBC_2.28". You are stuck: now you have to compile it from source, and you start by installing the necessary dependencies. But even GCC and all the other build tools are missing (or too old). You surrender and start using the default `top`, which makes your life even harder.

**"Why is it so hard to get a fxxking simple tool installed on a Linux system?"** You ask yourself.

## Introduction

Angrybox is a collection of modern Linux tools and utilities to help you inspect and debug a buggy system. It is:

- **Fully static and zero dependencies.** Angrybox keeps "true portability" in mind, allowing it to work on an empty system with only a kernel. No glibc, no libc++, no other dependencies. Also, it can run in a `scratch` docker container.
- **Modern enough.** Forget about old and unmaintained tools. Angrybox is built with the latest LLVM and Musl libc, and carries modern tools like gdu, fastfetch, etc.
