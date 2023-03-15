#ifndef __CPU_O3_TOKEN_MANAGER_HH__
#define __CPU_O3_TOKEN_MANAGER_HH__

#include "base/types.hh"
#include "cpu/o3/dyn_inst_ptr.hh"

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

    /** Modifiers for current active token counts, for debugging */
    void _incrementCurrentActiveTokenCount();
    void _decrementCurrentActiveTokenCount();

    /** Max and current active tokens during lifetime of TokenManager, for debugging */
    static unsigned maxNumActiveTokens;
    static unsigned currentNumActiveTokens;

  private:
    
    /** Bitstring of active, allocated set of tokens */
    static uint32_t activeTokens;

    /** Last token allocation completed, enables small optimization for token allocation */
    static unsigned lastAllocatedToken;
};

} // namespace o3
} // namespace gem5

#endif // __CPU_O3_TOKEN_MANAGER_HH__
