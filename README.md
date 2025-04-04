# eldstar

![Eldstar TAS-Safe variant](eldstar_server/resources/images/eldstar_tassafe_128.png) ![Eldstar Cheats variant](eldstar_server/resources/images/eldstar_cheats_128.png)

Paper Mario realtime collision observer and dumper.

[Demo of framedump with UI enabled](https://youtu.be/UWDEOoRjCwI)

This consists of two parts:

## The Server

The server is written in C++ and processes and renders the data from the client. It is written using OpenGL via GLFW, and can be built with CMake.

![Screenshot of the Eldstar Server in Southern Toad Town](.github/resources/server_screenshot.png)

## The Client

The currently available client is written in Lua for the BizHawk emulator.
It serializes data from the emulator core RDRAM and sends it via socket to the server.

The server is client-agnostic and it is possible to write a client for other emulators if the same data can be obtained through their APIs.

![Screenshot of the Eldstar Client sending information to the server as above](.github/resources/client_screenshot.png)
