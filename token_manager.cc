#include "cpu/o3/token_manager.hh"

#include "cpu/o3/limits.hh"
#include "cpu/o3/dyn_inst_ptr.hh"
#include "cpu/o3/dyn_inst.hh"

namespace gem5
{

namespace o3
{

uint32_t TokenManager::activeTokens = 0;
unsigned TokenManager::lastAllocatedToken = 0;

bool
TokenManager::allocateTokenID(const DynInstPtr &inst) {

    // Start at next token position (more likely available).
    int query_idx = lastAllocatedToken % MaxTokenID;

    printf("Current token allocation: %d\n", activeTokens);

    // Check to make sure we haven't gone over the max allowed token value.
    for (int query_attempt = 0; query_attempt < MaxTokenID; query_attempt++)
    {
        if (!(activeTokens & (1 << query_idx))) { // if token with index "query_idx" is not-allocated, let's allocate it
            activeTokens |= (1 << query_idx);
            inst->tokenID = query_idx + 1; // Represents a token, value 1 - max tokens
            lastAllocatedToken = query_idx + 1;
            return true;
        }

        query_idx = (query_idx+1) % MaxTokenID;
    }

    // If we didn't exit early, then we have no tokens to allocate; loudly proclaim this error
    printf("ERROR: Max number of tokens (%d) reached.\n", MaxTokenID);
    return false; // indicates failure to allocate
}

bool
TokenManager::deallocateTokenID(unsigned token) {

    if (token <= MaxTokenID && (activeTokens & (1 << (token-1)))) {
        activeTokens &= ~(1 << (token-1)); // Unset allocation flag for token.
        return true;
    }

    return false;
}

} // namespace o3
} // namespace gem5