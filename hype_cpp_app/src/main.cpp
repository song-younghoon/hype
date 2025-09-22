#include "../interface/application_cpp.h"

#include <chrono>

namespace exports {
namespace application {
int32_t GetCurrentUnixtime() {
  auto now = std::chrono::system_clock::now();
  auto duration = now.time_since_epoch();
  return static_cast<int32_t>(
      std::chrono::duration_cast<std::chrono::seconds>(duration).count());
}
} // namespace application
} // namespace exports
