/*
 * Hetero-mark
 *
 * Copyright (c) 2015 Northeastern University
 * All rights reserved.
 *
 * Developed by:
 *   Northeastern University Computer Architecture Research (NUCAR) Group
 *   Northeastern University
 *   http://www.ece.neu.edu/groups/nucar/
 *
 * Author: Yifan Sun (yifansun@coe.neu.edu)
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal with the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 *   Redistributions of source code must retain the above copyright notice,
 *   this list of conditions and the following disclaimers.
 *
 *   Redistributions in binary form must reproduce the above copyright
 *   notice, this list of conditions and the following disclaimers in the
 *   documentation and/or other materials provided with the distribution.
 *
 *   Neither the names of NUCAR, Northeastern University, nor the names of
 *   its contributors may be used to endorse or promote products derived
 *   from this Software without specific prior written permission.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * CONTRIBUTORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS WITH THE SOFTWARE.
 */

#ifndef SRC_COMMON_COMMAND_LINE_OPTION_OPTION_SETTING_H_
#define SRC_COMMON_COMMAND_LINE_OPTION_OPTION_SETTING_H_

#include <memory>
#include <string>

#include "src/common/command_line_option/argument.h"

/**
 * An OptionSetting is a list of registered argument for the program
 */
class OptionSetting {
 public:
  /**
   * The iterator for the arguments
   */
  class Iterator {
   public:
    virtual ~Iterator() {}
    virtual bool HasNext() = 0;
    virtual Argument *Next() = 0;
  };

  /**
   * Virtual destructor
   */
  virtual ~OptionSetting() {}

  /**
   * Add an argument to the command line option setting
   */
  virtual void AddArgument(std::unique_ptr<Argument> argument) = 0;

  /**
   * Get the argument iterator
   */
  virtual std::unique_ptr<Iterator> GetIterator() = 0;
  

  virtual void SetProgramName(const char *name) = 0;
  virtual const std::string GetProgramName() = 0;

  virtual void SetProgramDescription(const char *desciption) = 0;
  virtual const std::string GetProgramDescription() = 0;
};

#endif  // SRC_COMMON_COMMAND_LINE_OPTION_OPTION_SETTING_H_
