// Display images inside a terminal
// Copyright (C) 2023  JustKidding
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <https://www.gnu.org/licenses/>.

#ifndef __PROCESS_INFO__
#define __PROCESS_INFO__

#include <string>

class ProcessInfo
{
public:
    ProcessInfo(int pid);
    ~ProcessInfo() = default;

    int pid;
    int ppid;
    unsigned int tty_nr;
    unsigned int minor_dev;
    char state;
    std::string executable;
    std::string pty_path;
};

#endif
