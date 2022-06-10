#!/bin/bash

# This script select the desired values ​​from the strings in the log.txt

# Reading file log.txt
cat log.txt |

# Select strings with containing ip 10.1.192.38
grep "10.1.192.38" |

# Remove all chars before "sid=\" (including)
sed -e "s/.*sid=\///" |

# Remove all chars after "\$type" (including)
sed -r 's/\/\&type.+//' |

# Sorting string by name
sort -i