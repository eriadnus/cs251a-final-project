#ifndef __CPU_O3_TOKEN_MANAGER_HH__
#define __CPU_O3_TTOKEN_MANAGER_HH__

#include "base/types.hh"

namespace gem5
{

namespace o3
{

/** Aimed for Selective Replay Support */
class TokenManager
{
  public:

    /** Allocate next token for LOAD instruction */
    bool allocateTokenID(const DynInstPtr &inst);

    /** Deallocate specified token (to be used when instructions commit). */
    bool deallocateTokenID(unsigned token);

  private:
    
    /** Bitstring of active, allocated set of tokens */
    static uint32_t activeTokens = 0;

    /** Last token allocation completed, enables small optimization for token allocation */
    static unsigned lastAllocatedToken = 0;
}

} // namespace o3
} // namespace gem5

#endif // __CPU_O3_TOKEN_MANAGER_HH__
