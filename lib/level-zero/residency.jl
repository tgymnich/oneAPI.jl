export make_resident, evict


## memory

make_resident(ctx::ZeContext, dev::ZeDevice, buf::AbstractBuffer, size=sizeof(buf)) =
    zeContextMakeMemoryResident(ctx, dev, buf, size)

evict(ctx::ZeContext, dev::ZeDevice, buf::AbstractBuffer, size=sizeof(buf)) =
    zeContextEvictMemory(ctx, dev, buf, size)
