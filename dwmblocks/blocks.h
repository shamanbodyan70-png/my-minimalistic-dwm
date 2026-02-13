static const Block blocks[] = {
    /* icon  command                                         interval  signal */
    { "", "cat /sys/class/power_supply/BAT1/status | grep -q Charging && echo -n '+'; cat /sys/class/power_supply/BAT1/capacity | awk '{print $1\"%\"}'", 30, 0 },
    { "", "date '+%H:%M'",                               5,       0 },
    { "", "/home/shaman/scripts/kb.sh", 1, 0 },
    { "", "/home/shaman/scripts/wifi.sh", 5, 1 },
};

//sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char delim[] = " | ";
static unsigned int delimLen = 2;
