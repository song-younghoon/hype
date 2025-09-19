#include <chrono>

__attribute__((export_name("get_current_unixtime")))
int get_current_unixtime() {
    auto now = std::chrono::system_clock::now();
    auto duration = now.time_since_epoch();
    return static_cast<int>(std::chrono::duration_cast<std::chrono::seconds>(duration).count());
}
